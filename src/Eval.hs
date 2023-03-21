module Eval where

import Prop

type Valuation = [(Char, Bool)]

eval :: Valuation -> Prop -> Bool
eval _ (Con c)   = c
eval v (Var x)   = head [ b | (x', b) <- v, x == x' ]
eval v (Not p)   = not (eval v p)
eval v (And p q) = eval v p && eval v q
eval v (Or  p q) = eval v p || eval v q
eval v (Imp p q) = eval v (Not p) || eval v q
