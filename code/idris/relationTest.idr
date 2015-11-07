module relationTest

import relation
import bool
import list 
import person
import people
import nat 
import pair 


years': Nat
years' = query plus 0 age gender people

totalHeight: Nat
--names = "Foo " ++ "Bar"
totalHeight = query plus 0 height gender people

names: String
names = query (++) "" name gender people

years'': Nat
years'' = query2 people gender age plus 0

totalInches'': Nat
totalInches'' = query2 people gender height mult 1

names'': String
names'' = query2 people gender name (++) ""

number: Nat
number = query2 people gender countOne plus 0


aveAge': pair Nat Nat
aveAge' = ave_rel people gender age

aveAge: pair Nat Nat
aveAge = mkPair 
           (query2 people gender age plus 0) 
           (query2 people gender countOne plus 0)
           
---homework, add some test files
|||multiply ages of poeple who are female
agesMult'': Nat
agesMult'' = query2 people gender age mult 1

||multiply height of people who are female 
heightMult'': Nat
heightMult'' = query2 people gender height mult 1

