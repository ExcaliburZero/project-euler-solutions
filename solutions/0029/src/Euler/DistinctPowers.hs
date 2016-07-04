module Euler.DistinctPowers where

import Data.List (nub)

type Bounds = ((Integer, Integer), (Integer, Integer))

powers :: Bounds -> [Integer]
powers ((la, ua), (lb, ub)) = result
  where result = [a ^ b | a <- [la..ua], b <- [lb..ub]]

distinctPowers :: Bounds -> Int
distinctPowers b = result
  where result = (length . nub) $ powers b
