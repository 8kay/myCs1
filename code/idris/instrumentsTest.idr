module instrumentsTest


import instruments
import relation
import bool
import list
import pair   

n: String
n = name Guitar

i: Nat
i = invented Guitar

w: bool
w = wind Guitar 

n1: String
n1 = name Trumpet

i1: Nat
i1 = invented Trumpet

w1: bool
w1 = wind Trumpet


n2: String
n2 = name Piano

i2: Nat
i2 = invented Piano 

w2: bool
w2 = wind Piano

n3: String
n3 = name Flute

i3: Nat
i3 = invented Flute

w3: bool
w3 = wind Flute 

---homework 10/20
|||count octaves of wind instruments
count: Nat
count = query2 instruments wind octaves plus 0

|||multiply octaves of wind instruments
totalOct: Nat
totalOct = query2 instruments wind octaves mult 1

|||list names of wind instruments
names: String
names = query2 instruments wind name (++) ""


|||give average octaves of wind instruments
aveOct: pair Nat Nat
aveOct = mkPair (query2 instruments wind octaves plus 0) (query2 instruments wind countOne plus 0)
