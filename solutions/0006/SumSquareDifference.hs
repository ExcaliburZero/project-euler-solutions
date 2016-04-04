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
module SumSquareDifference where

-- Gives the sum of the squares from one up to the given number
sumSquares :: Integer -> Integer
sumSquares 1 = 1
sumSquares x = x ^ 2 + sumSquares (x - 1)

-- Gives the square of the sum of the numbers from one up to the given number
squareSum :: Integer -> Integer
squareSum x = (sum [1,2..x]) ^ 2

-- Gives the difference between the sum of the squares and the squares of the
-- sum from one to the given number
sumSquareDifference :: Integer -> Integer
sumSquareDifference x = squareSum x - sumSquares x
