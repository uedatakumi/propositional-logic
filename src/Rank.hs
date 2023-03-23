module Rank where

import Prop

rank :: Prop -> Int
rank (Con _) = 0
rank (Var _) = 0
rank (Not p) = rank p + 1 
rank (And p q) = maximum [rank p, rank q] + 1
rank (Or  p q) = maximum [rank p, rank q] + 1
rank (Imp p q) = maximum [rank p, rank q] + 1
rank (Iff p q) = maximum [rank p, rank q] + 1
