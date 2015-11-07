module people

import list 
import person 

people: list Person
people = tom::mary::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (getAge h)::(mapAge t)


