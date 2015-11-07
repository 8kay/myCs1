module listTest

import list
import nat
import bool 
import eq

infixr 7 ::

l: list bool
l = true :: false :: true :: true :: nil

|||append
app: list a -> list a -> list a
app nil m = m
app m nil = m
app (h :: l1') l2 = h :: (app l1' l2)



l4: nat
l4 = length (true :: nil)

l5: nat
l5 = length nil {a = nat}

--length
|||expect O
le1: nat
le1 = length nil {a = nat}
|||expect S (S O)
le2: nat
le2 = length ((S O)::(S O)::nil)

--app
|||expect cons (S O) nil
a1: list nat
a1 = (++) nil (O :: nil)
|||expect cons (S O) nil
a2: list nat
a2 = (++) ((S O)::nil) nil
||| expect cons (S O) (cons (S O) nil)
a3: list nat 
a3 = (++) ((S O) :: nil) ((S O) ::  nil)

|||append
(++): list a -> list a -> list a
(++) nil m = m
(++) m nil = m
(++) (h :: l1') l2 = h :: (app l1' l2)

|||map
m1: list bool
m1 = map evenb nil

m2: list bool
m2 = map evenb ((S O)::((S (S (S O)))::nil))
 
m3:list bool 
m3 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

f1: list nat
f1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

isThree: bool
isThree = (member (S (S (S O)))  l2)
