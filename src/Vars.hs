module Vars where

import Prop

vars :: Prop -> [Prop]
vars (Con _)   = []
vars (Var x)   = [Var x]
vars (Not p)   = vars p
vars (And p q) = vars p ++ vars q
vars (Or  p q) = vars p ++ vars q
vars (Imp p q) = vars p ++ vars q
