module boolTest

import Serialize
import pair
import bool 

---and, a function that is true if both a and b are true
||| a test, expecting true
a1: bool
a1 = and true true
||| a test, expecting false
a2: bool
a2 = and false true
||| expect false
a3: bool
a3 = and true false
||| expect false
a4: bool
a4 = and false true

---or, a function that is true if either a or b is true
||| a test, expecting true
o1: bool
o1 = or true false
|||a test, expecting false
o2: bool
o2 = or false false
||| a test, expecting true
o3: bool
o3 = or true true
||| a test, expecting true
o4: bool
o4 = or false true

---nand, a function that is true if either a or b is true but is false if both a and b are true. It is also true if both a and b are false
|||a test, expecting true
n1: bool
n1 = nand true false
||| a test, execitng true
n2: bool
n2 = nand false false
||| a test, expecting false
n3: bool
n3 = nand true true
|||expect true
n4: bool
n4 = nand false true

---xor, a function that is true if a or b is true but is false if both a and b are true or both a and b are false
||| a test, expecting true
x1: bool
x1 = xor true false
||| a test, expecting false
x2: bool
x2 = xor true true
||| a test, expecting false
x3: bool
x3 = xor false false
||| a test, expecting true
x4: bool
x4 = xor false true 

s: String
s = toString true
