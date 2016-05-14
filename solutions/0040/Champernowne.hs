{-
 - Copyright (c) 2016 Christopher Wells <cwellsny@nycap.rr.com>
 - 
 - Permission is hereby granted, free of charge, to any person obtaining a copy
 - of this software and associated documentation files (the "Software"), to deal
 - in the Software without restriction, including without limitation the rights
 - to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 - copies of the Software, and to permit persons to whom the Software is
 - furnished to do so, subject to the following conditions:
 -
 - The above copyright notice and this permission notice shall be included in
 - all copies or substantial portions of the Software.
 -
 - THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 - IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 - FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 - AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 - LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 - OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 - SOFTWARE.
 -}
module Champernowne where

import Data.Char

-- Gets the upper bound for the function section
getBound :: Int -> Int
getBound x = (l - (n - 1)) * m + n
  where n = 10 ^ (x - 1)
        l = (n * 10) - 1
        m = length $ show n

-- Changes the digit into the corresponding ten
digitToTen :: Int -> Int
digitToTen x
  | x < getBound 1 = 1
  | x < getBound 2 = 10
  | x < getBound 3 = 100
  | x < getBound 4 = 1000
  | x < getBound 5 = 10000
  | x < getBound 6 = 100000
  | otherwise = -1

-- Gets the result for the given digit with the given 10th
getResult :: Int -> Int
getResult x = digitToInt ((show (((x - n) `div` m) + n)) !! ((x - n) `mod` m))
  where n = digitToTen x
        m = length $ show n

-- Gets the result for the given digit
getDigit :: Int -> Int
getDigit x = getResult x
