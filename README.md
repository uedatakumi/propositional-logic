# Propositional Logic

```
cd src
ghci Eval.hs
```

## Examples

### Negation

$\lnot P$
```
*Eval> eval [('P', True)] (Not (Var 'P'))
False
```

### Conjunction

$P \land Q$
```
*Eval> eval [('P', True), ('Q', False)] (And (Var 'P') (Var 'Q'))
False
```

### Disjunction

$P \lor Q$
```
*Eval> eval [('P', True), ('Q', False)] (Or (Var 'P') (Var 'Q'))
True
```

### Implication

$P \to Q$
```
*Eval> eval [('P', True), ('Q', False)] (Imp (Var 'P') (Var 'Q'))
False
```

### Bi-implication

$P \leftrightarrow Q$
```
*Eval> eval [('P', True), ('Q', True)] (Iff (Var 'P') (Var 'Q'))
True
```

### Substitution

$(P \land Q)[P := (R \lor S)]$
```
*Eval> subst (And (Var 'P') (Var 'Q')) [('P', (Or (Var 'R') (Var 'S')))]
And (Or (Var 'R') (Var 'S')) (Var 'Q')
```