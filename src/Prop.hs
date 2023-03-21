module Prop where

data Prop = Con Bool
          | Var Char
          | Not Prop
          | And Prop Prop
          | Or  Prop Prop
          | Imp Prop Prop
