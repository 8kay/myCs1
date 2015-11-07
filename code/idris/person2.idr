module Person

import bool

||| A Person has an age in years, a height in inches, 
||| and a gender, true=female, false=male.
data Person = mkPerson String Nat Nat bool

tom: Person
tom = mkPerson "Tom" 18 72 false

mary: Person
mary = mkPerson "Mary" 21 68 true

getName: Person -> String
getName (mkPerson name age height gender) = name

getAge: Person -> Nat
getAge (mkPerson name age height gender) = age

getHeight: Person -> Nat
getHeight (mkPerson name age height gender) = height

getGender: Person -> bool
getGender (mkPerson name age height gender) = gender


tomsAge: Nat 
tomsAge = getAge tom

setName: Person -> String -> Person
setName (mkPerson n a h g) n' = mkPerson n' a h g

tom': Person
tom' = setName tom "John"

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
--record Person where
    constructor MkPerson
    name : String
    age : Nat

-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3

-- And now here's the key idea: The names of the fields are
-- automatically names of projection functions! Here we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

|||Emily age 19
e: Person
e = MkPerson "Emily" 19

a: Nat
a = age e

n': String
n' = name e 

|||Leanne, age 19

l: Person
l = MkPerson "Leanne" 19

a1: Nat
a1 = age l

n1: String
n1 = name l

||| Catherine, age 19

c: Person
c = MkPerson "Catherine" 19

a2: Nat
a2 = age c

n2: String
n2 = name c
