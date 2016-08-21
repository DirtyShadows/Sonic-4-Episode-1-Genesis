#! /bin/sh -e
export AS_MSGPATH=mac/msg 
mac/asl -gnuerrors -E -A -xx smps.asm
#read
mac/p2bin smps.p smpsbuilt.bin -r 0x-0x
#read
rm smps.p
