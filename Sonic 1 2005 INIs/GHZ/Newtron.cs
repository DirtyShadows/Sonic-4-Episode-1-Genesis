using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Drawing;
using SonicRetro.SonLVL.API;

namespace S12005ObjectDefinitions.GHZ
{
    class Newtron : ObjectDefinition
    {
        private int[] labels = { 3, 1 };
        private Sprite img;
        private List<Sprite> imgs = new List<Sprite>();

        public override void Init(ObjectData data)
        {
            byte[] artfile = ObjectHelper.OpenArtFile("../artnem/newtron.bin", CompressionType.Nemesis);
            img = ObjectHelper.MapASMToBmp(artfile, "../_maps/obj42.asm", 3, 0);
            for (int i = 0; i < labels.Length; i++)
                imgs.Add(ObjectHelper.MapASMToBmp(artfile, "../_maps/obj42.asm", labels[i], i));
        }

        public override ReadOnlyCollection<byte> Subtypes
        {
            get { return new ReadOnlyCollection<byte>(new byte[] { 0, 1 }); }
        }

        public override string Name
        {
            get { return "Newtron"; }
        }

        public override bool RememberState
        {
            get { return true; }
        }

        public override string SubtypeName(byte subtype)
        {
            switch (subtype)
            {
                case 0:
                    return "Flies along the ground";
                case 1:
                    return "Fires missile, then disappears";
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
            if (subtype < labels.Length)
                return imgs[subtype];
            else
                return img;
        }

        public override Rectangle GetBounds(ObjectEntry obj, Point camera)
        {
            if (obj.SubType < labels.Length)
                return new Rectangle(obj.X + imgs[obj.SubType].X - camera.X, obj.Y + imgs[obj.SubType].Y - camera.Y, imgs[obj.SubType].Width, imgs[obj.SubType].Height);
            else
                return new Rectangle(obj.X + img.X - camera.X, obj.Y + img.Y - camera.Y, img.Width, img.Height);
        }

        public override Sprite GetSprite(ObjectEntry obj)
        {
            byte subtype = obj.SubType;
            if (obj.SubType > labels.Length) subtype = 0;
            BitmapBits bits = new BitmapBits(imgs[subtype].Image);
            bits.Flip(obj.XFlip, obj.YFlip);
            return new Sprite(bits, new Point(obj.X + imgs[subtype].X, obj.Y + imgs[subtype].Y));
        }
    }
}