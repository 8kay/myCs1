module dnaTest

import dna

--expect T
t: base
t = complement_base A
--expect A
a: base
a = complement_base T
--expect G
g: base
g = complement_base C
--expect C
c: base
c = complement_base G
