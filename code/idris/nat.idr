module nat

import Serialize
import bool
import pair
import eq 

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

|||addition
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

||| given a pair of natural numbers, return its multiplication
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = (add (mult n m) m)

|||factorials
fact: nat -> nat
fact O = (S O)
fact (S n') = mult (fact n') (S n')

||| given a pair of natural numbers, (a b ) return a-b ||| if a <= b, the answer will be zero
sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n)(S m) = sub n m

||| #5 - exp = given a pair of natural numbers (x, n) return the value of x raised to the nth power
expp: nat -> nat -> nat
expp x O = S O
expp x (S n) = mult x (expp x n)

|||#6 - Lep - given a pair ab return true if a < = b otherwise false
le: nat -> nat -> bool
le O m = true
le (S n) (O) = false
le (S n) (S m) = le n m

|||#7 eqp given a pair of natural numbers, return true if a is equal to b, otherwise, return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O b = false 
eql_nat a O = false
eql_nat (S a) (S b) = eql_nat a b 
 
||| #8 gtp - given a pair of natural numbers, (a, b) return true if a is greater than to b, otherwise false
gt: nat -> nat -> bool
gt O O = false
gt O (S n) = false 
gt (S n) O = true
gt (S a) (S b) = gt a b 

||| #9 gep - give a pair of natural numbers (a, b) return true if a is greater than or eql_natual to b
ge: nat -> nat -> bool
ge a O = true
ge O (S n) = false
ge (S a) (S b) = ge a b

||| #10 ltp - given a pair of natural numbers, (a b) return true if a is less than b
lt: nat -> nat -> bool
lt O O = false
lt O (S b) = true
lt (S a) O = false
lt (S a) (S b) = lt a b

|||takes a natural number n and returns the fibonaci number. 0 = 0 1=1 function of others fib n-1 plus fibb n- 2
fib: nat -> nat
fib O = O 
fib (S O) = (S O) 
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2
  
instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
