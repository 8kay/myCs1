module Instruments

import list
import bool
import relation

record Instrument where
  constructor MkInstr
  name: String
  invented: Nat
  wind: bool 
  octaves: Nat

||| The Record Instruments provides a record of the instrument, its name, and whether or not it is a wind instrument based on a true or false bool value

||| Guitar
Guitar: Instrument
Guitar = MkInstr "Guitar" 900 false 4

|||trumpet
Trumpet: Instrument
Trumpet = MkInstr "Trumpet" 0 true 5

|||piano
Piano: Instrument
Piano = MkInstr "Piano" 1700 false 10

|||flute
Flute: Instrument
Flute = MkInstr "Flute" 1832 true 3

listall: list Instrument
listall = Guitar::Piano::Flute::Trumpet::nil


instruments: list Instrument
instruments = Guitar::Trumpet::Piano::Flute::nil
