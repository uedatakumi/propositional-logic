module AST where

data Prop = Con Bool
          | Var Char
          | Not Prop
          | And Prop Prop
          | Or  Prop Prop
