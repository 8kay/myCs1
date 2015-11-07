module bool

data bool = true | false

id: bool -> bool
id x = x

ConstTrue: bool -> bool
ConstTrue _ = true

ConstFalse: bool -> bool
ConstFalse _ = false

not: bool -> bool
not true = false
not false = true


