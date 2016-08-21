fsutil file createnew padding.bin 16384
 :: Create a file called "padding.bin" with 16KB

ren sonic.bin sonic_old.bin
 :: Rename the original "sonic.bin" to "sonic_old.bin"

copy /b sonic_old.bin+padding.bin sonic.bin
 :: Copy the 2 files into a new "sonic.bin"
pause