module Person

import bool

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool


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
