module list 

import nat
import bool 
import option
import ite
import eq
import Serialize

infixr 7 ::, ++

data list a = nil | (::) a (list a)

length: list a -> nat
length nil = O
length (n :: l') = S (length l')

|||append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) l1 nil = l1
(++) (h::t) l2 = h :: (t++l2)

--{given any function from an element of one type to an element of a
--possibly different type and given  alist of the fist type we produce
--a list of the second type if you map function over empty list you
--get nothing if you map function over a list with a head and a tail
--you get a new lists, the head' of which is obtained by f h and the
--tail is map the rest until we can recursivley get back to notihng.}--
|||map a fuction over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)


---if then else true, take true branch and false branch adn return
---true branch. vice versa for false

|||filter -egive a list and a predicate of elements return the sublist for which the predicate is true.
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                      (filter f t)   

|||reduce a "list of a's" to a "b" using a function f
|||having identity "id"
foldr: (a -> b -> b) -> b -> list a -> b
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

|||return the tail of a list in an option
tail: list a -> option (list a)
tail nil = none
tail (h::t) = some t

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                  true
                  (member v t)

instance (eq a) => eq (list a) where 
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)
 

subset_elements: (eq a) => list a -> list a ->  bool
subset_elements nil l2 = true
subset_elements (h::t) l2 = and 
                            (member h l2)
                            (subset_elements t l2)

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 =
                    and
                     (subset_elements l1 l2)
                     (subset_elements l2 l1)
---commented out code was what I originally had before going to see
  ---the professor
--subset_elements: (eq a) => list a -> list a -> bool
--subset_elements nil nil = true
--subset_elements (h1::t1) (h2::t2) = ite (member h1 (h2::t2))
                                   -- true
                                    --(subset_elements t1 (h2::t2))
                                         
--same_elements: (eq a) => list a -> list a -> bool
--same_elements (h1::t1) (h2::t2) = and (subset_elements (h1::t1) ( h2::t2)) (subset_elements (h2::t2) (h1::t1))

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::t) = (toString h) ++  ", " ++ (toStringList t)
  
instance (Serialize a) => Serialize (list a) where
  toString nil = "[]"
  toString l = "[" ++ (toStringList l) ++ "]"
