module ite

import bool

||| If then else
ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb
