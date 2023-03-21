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
