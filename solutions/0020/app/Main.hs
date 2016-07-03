module Main where

import Euler.FactorialDigitSum

main :: IO ()
main = do
  let input = 100
  let result = factorialDigitSum input
  print result
