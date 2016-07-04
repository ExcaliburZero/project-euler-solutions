module Main where

import Euler.DistinctPowers

main :: IO ()
main = do
  let input = ((2, 100), (2, 100))
  let result = distinctPowers input
  print result
