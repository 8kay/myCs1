module friend

import bool

||| a friend is someone who is or isn't trustworthy, who has a name, and who has an age in years

data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Pragati" 19

f2: friend
f2 = mkFriend true "Kaitlin" 20

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> s
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b 
