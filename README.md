# Propositional Logic

```
cd src
ghci Eval.hs
```

## Examples

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
