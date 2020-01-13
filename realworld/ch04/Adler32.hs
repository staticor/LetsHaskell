-- package com.geekbang.learncollection;
--
--public class Adler32
--{
--    private static final int base = 65521;
--
--    public static int compute(byte[] data, int offset, int length)
--    {
--        int a = 1, b = 0;
--
--        for (int i = offset; i < offset + length; i++) {
--            a = (a + (data[i] & 0xFF )) % base;
--            b = (a + b) % base;
--        }
--
--        return (b << 16) | a;
--    }
--}



import Data.Char (ord)
import Data.Bits (shiftL, (.&.), (.|.))

base = 65521

adler32 xs = helper 1 0 xs 
    where helper a b (x:xs) = let a' = ( a + (ord x .&. 0xff ) ) `mod`  base 
                                  b' = (a' + b) `mod` base 
                              in helper a' b' xs 
          helper a b []     = (b `shiftL` 16) .|. a


