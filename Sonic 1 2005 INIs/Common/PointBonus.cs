using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Drawing;
using SonicRetro.SonLVL.API;

namespace S12005ObjectDefinitions.Common
{
    class PointBonus : ObjectDefinition
    {
        private int[] labels = { 1, 2, 3 };
        private Sprite img;
        private List<Sprite> imgs = new List<Sprite>();

        public override void Init(ObjectData data)
        {
            byte[] artfile = ObjectHelper.OpenArtFile("../artnem/bonus.bin", CompressionType.Nemesis);
            img = ObjectHelper.MapASMToBmp(artfile, "../_maps/obj7D.asm", 3, 0);
            imgs.Add(ObjectHelper.UnknownObject);
            for (int i = 0; i < labels.Length; i++)
                imgs.Add(ObjectHelper.MapASMToBmp(artfile, "../_maps/obj7D.asm", labels[i], 0));
        }

        public override ReadOnlyCollection<byte> Subtypes
        {
            get { return new ReadOnlyCollection<byte>(new byte[] { 1, 2, 3 }); }
        }

        public override string Name
        {
            get { return "Hidden point bonus"; }
        }

        public override bool RememberState
        {
            get { return false; }
        }

        public override string SubtypeName(byte subtype)
        {
            switch (subtype)
            {
                case 1:
                    return 10000.ToString("N0") + " points";
                case 2:
                    return 1000.ToString("N0") + " points";
                case 3:
                    return 100.ToString("N0") + " points";
                default:
                    return string.Empty;
            }
        }

        public override Sprite Image
        {
            get { return img; }
        }

        public override Sprite SubtypeImage(byte subtype)
        {
            if (subtype < labels.Length + 1)
                return imgs[subtype];
            else
                return img;
        }

        public override Rectangle GetBounds(ObjectEntry obj, Point camera)
        {
            if (obj.SubType < labels.Length + 1)
                return new Rectangle(obj.X + imgs[obj.SubType].X - camera.X, obj.Y + imgs[obj.SubType].Y - camera.Y, imgs[obj.SubType].Width, imgs[obj.SubType].Height);
            else
                return new Rectangle(obj.X + img.X - camera.X, obj.Y + img.Y - camera.Y, img.Width, img.Height);
        }

        public override Sprite GetSprite(ObjectEntry obj)
        {
            byte subtype = obj.SubType;
            if (subtype > labels.Length + 1) subtype = 0;
            BitmapBits bits = new BitmapBits(imgs[subtype].Image);
            bits.Flip(obj.XFlip, obj.YFlip);
            return new Sprite(bits, new Point(obj.X + imgs[subtype].Offset.X, obj.Y + imgs[subtype].Offset.Y));
        }
    }
}