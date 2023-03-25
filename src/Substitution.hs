module Substitution where

import Prop

type Substitution = [(Char, Prop)]

subst :: Prop -> Substitution -> Prop
subst (Con c)   _              = Con c
subst (Var x)   sigma
    | Just p <- lookup x sigma = p
    | otherwise                = Var x
subst (Not p)   sigma          = (Not (subst p sigma))
subst (And p q) sigma          = (And (subst p sigma) (subst q sigma))
subst (Or  p q) sigma          = (Or  (subst p sigma) (subst q sigma))
subst (Imp p q) sigma          = (Imp (subst p sigma) (subst q sigma))
subst (Iff p q) sigma          = (Iff (subst p sigma) (subst q sigma))
