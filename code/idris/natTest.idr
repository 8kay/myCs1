module natTest

import nat
import bool
import Serialize


---addition
|||expect (S O)
a1: nat
a1 = add O (S O)
||| expect (S (S (S O)))
a2: nat
a2 = add (S O) (S (S O))

--multiplication
|||expect O
m1: nat
m1 = mult O (S O)
|||expect (S (S (S (S (S (S O))))))
m2: nat
m2 = mult (S (S O)) (S (S (S O)))

--factorial
|||expect (S O)
f1: nat
f1 = fact O
||| expect (S (S O))
f2: nat
f2 = fact (S (S O))

--subtraction
|||expect O
s1: nat
s1 = sub O (S O)
|||expect (S O)
s2: nat
s2 = sub (S O) O
|||expect (S (S O))
s3: nat
s3 = sub (S (S (S (S O)))) (S (S O))

-- #5 - expp = given a pair of natural numbers (x, n) return the value of x raised to the nth power
||| a test expecting S O
e1: nat
e1 = expp (S (S O)) O
||| a test expecting (S (S (S (S (S (S (S (S O))))))))
e2: nat
e2 = expp (S (S O)) (S (S (S O)))

--#6 - Le - given a pair ab return true if a < = b otherwise false
||| a test expecting true
l1: bool 
l1 = le O (S O)
||| a test expecting true
l2: bool
l2 = le O O
||| a test expecting false
l3: bool
l3 = le (S O) O

---#7 eq given a pair of natural numbers, return true if a is equal to b, otherwise, return false
|||  a test expecting true
q1: bool
q1 = eql_nat O O
||| a test expecting true
q2: bool
q2 = eql_nat (S (S O)) (S (S O))
||| a test expecting false
q3: bool
q3 = eql_nat (S (S O)) (S O)
||| a test expecting false
q4: bool
q4 = eql_nat (S O) (S (S (S O)))

---||| #8 gt - given a pair of natural numbers, (a, b) return true if a is greater than to b, otherwise false
||| a test expecting false
g1: bool
g1 = gt O O 
||| a test expecting false
g2: bool
g2 =  gt (S O) (S (S O))
||| a test expecting true
g3: bool
g3 = gt (S (S O)) (S O)

--||| #9 ge - give a pair of natural numbers (a, b) return true if a is greater than or eql_natual to b

|||a test expecting true
ge1: bool
ge1 = ge (S O) (O)
||| a test expecting false
ge2: bool
ge2 = ge O (S O)
||| a test expecting true
ge3: bool
ge3  = ge (S (S O)) (S O)
||| a test expecting true
ge4: bool
ge4 = ge (S O) (S O)

---||| #10 lt - given a pair of natural numbers, (a b) return true if a is less than b
||| a test expecting false
lt1: bool
lt1 = lt O O
||| a test expecting true
lt2: bool
lt2 = lt (S O) (S (S O))
||| a test expecting false
lt3: bool
lt3 = lt (S (S O)) (S O)

---fibonacci number: when given a number n, return the fibonacci number(the sum of the preceeding two numbers in the seql_natuence)
||| a test expecting O
fb1: nat
fb1 = fib O
||| a test expecting S O
fb2: nat
fb2 = fib (S O)
||| a test expecting (S (S (S O)))
fb3: nat
fb3 = fib (S (S (S (S O))))

s: String
s = toString fb1 
