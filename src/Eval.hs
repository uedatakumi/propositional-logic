module Eval where

import AST

type Valuation = [(Char, Bool)]

eval :: Valuation -> Prop -> Bool
eval _ (Con c)   = c
eval v (Var x)   = head [ b | (x', b) <- v, x == x' ]
eval v (Not p)   = not (eval v p)
eval v (And p q) = eval v p && eval v q
eval v (Or  p q) = eval v p || eval v q
