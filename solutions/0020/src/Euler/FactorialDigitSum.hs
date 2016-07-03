module Euler.FactorialDigitSum where

import Data.Char (digitToInt)

type InputNum = Integer

sumDigits :: Integer -> Integer
sumDigits n = sum $ digits n
  where digits n = map fromIntegral ((map digitToInt (show n)))

factorial :: Integer -> Integer
factorial n
  | n > 1     = n * (factorial $ n - 1)
  | otherwise = 1

factorialDigitSum :: InputNum -> Integer
factorialDigitSum x = result
  where result = (sumDigits . factorial) x
