module bool
import pair 

data bool = true | false

--- Exam Problem #2: There are 8 possible ways to fill in the result column for a truth table for a binary Boolean function, and there are thus exactly 8 such functions, and no more.

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false 

constTrue: bool -> bool
constTrue _ = true 

not: bool -> bool
not true = false
not false = true 

--homework due September 25th

andp: pair bool bool -> bool
andp (mkPair true true) = true 
andp (mkPair a b) = false 

orp: pair bool bool -> bool
orp (mkPair false false) = false
orp (mkPair a b) = true 

nandp: pair bool bool -> bool
nandp (mkPair true true) = false
nandp (mkPair a b) = true

xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp (mkPair a b) = false

---exam problem #4a
pand: bool -> bool -> bool
pand true = id_bool
pand false = constFalse

---exam problem #4b
por: bool -> bool -> bool
por true = constTrue
por false = id_bool

--exam problem #4c
pxor: bool -> bool -> bool
pxor true = not
pxor false = id_bool

--exam problem #4d
pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue
