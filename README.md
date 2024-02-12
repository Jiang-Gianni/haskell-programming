## Chapter 2

```bash
ghci
# GHCi, version 9.4.5: https://www.haskell.org/ghc/  :? for help
:load ch2/test.hs
# [1 of 2] Compiling Main             ( ch2/test.hs, interpreted )
sayHello "World"
# Hello, World!
```

`Normal Form`: Expression in `Normal Form` cannot be reduced / normalized any further. The normal form of 1 + 1 is 2.


Operators are functions which can be used in infix style. All operators
are functions; not all functions are operators.

```bash
10 `div` 4
# is equivalent to
div 10 4
```

Use `:info yourFunction` to get informations (example if it is an infix operator and its precedence)

```bash
:i *
# ype Num :: * -> Constraint
# class Num a where
#   ...
#   (*) :: a -> a -> a
#   ...
#         -- Defined in ‘GHC.Num’
# infixl 7 *

:i ^
# (^) :: (Num a, Integral b) => a -> b -> a       -- Defined in ‘GHC.Real’
# infixr 8 ^
```


`infixl` means the operator associates to the left, `infixr` to the right. The number indicates the precedence (highest first).

infixl operators:

| Operator | Name      | Description                                  |
| -------- | --------- | -------------------------------------------- |
| +        | plus      | addition                                     |
| -        | minus     | subtraction                                  |
| *        | asterisk  | multiplication                               |
| /        | slash     | fractional division                          |
| div      | divide    | integral division, round down                |
| mod      | modulo    | similar to ‘rem’, but after modular division |
| quot     | quotient  | integral division, round towards zero        |
| rem      | remainder | remainder after division                     |


Use spaces not tabs to indent your source code

* (quot x y)*y + (rem x y) == x

* (div x y)*y + (mod x y) == x


`let` and `where`:

```hs
printInc n = print plusTwo
  where
    plusTwo = n + 2

printInc2 n =
  let plusTwo = n + 2
   in print plusTwo
```


dollar sign `$` definition: `f $ a = f a`

```bash
:i $
# ($) :: (a -> b) -> a -> b       -- Defined in ‘GHC.Base’
# infixr 0 $
```

It has the lowest precedence. An expression with $ will evaluate everything on its right first.

```bash
(2^) $ 2 + 2
# 16
(2^)  (2 + 2)
# 16
(2^) $ (*30) $ 2 + 2
# 1329227995784915872903807060280344576
```
