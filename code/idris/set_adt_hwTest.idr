module set_adt_hwTest
import set_adt_hw

import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

|||list_remove
---expect nil
a: list nat
a = list_remove O nil
---expect (S O)::nil
a1: list nat
a1 = list_remove O (O::(S O)::nil)

|||set_remove
---expect mkSet (S O::nil)
a3: set nat
a3 = set_remove O (mkSet (O::(S O)::nil))

|||set_cardinality
---expect S (S O)
b: nat
b = set_cardinality (mkSet (O::(S O)::nil))

|||set_member
--expect true
c: bool
c = set_member O (mkSet (O::(S O)::nil))

|||set_union
--expect mkSet (O::(S O)::nil)
d: set nat
d = set_union (mkSet nil) (mkSet (O::(S O)::nil))

|||set_intersection
--expect (mkSet (true::nil))
e: set bool
e = set_intersection (mkSet (true::nil)) (mkSet (true::false::nil))

|||set_difference
--expect (mkSet true::nil)
f: set bool
f = set_difference (mkSet (true::false::nil)) (mkSet (false::nil))

|||set_forall
--expect false
g: bool
g = set_forall evenb (mkSet(O::(S O)::nil))

|||set_exists
--expect true
h: bool
h = set_exists evenb (mkSet (O::(S O)::nil))

|||set_witness
--some O
i: option nat
i = set_witness evenb (mkSet (O::(S O)::nil))

|||set_product
--mkSet ((mkPair true false :: nil) ++   (mkPair false false :: nil) ++ helper1 nil (false :: nil)) 
j: set (pair bool bool)
j = set_product (mkSet (true::false::nil)) (mkSet (false::nil))
