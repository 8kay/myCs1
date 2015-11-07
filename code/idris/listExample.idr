module listExample

import list
import instruments

||| all lists all records of instruments
all: list Instrument
all = g :: t :: p :: nil

||| wind list all records of wind instruments
wind: list Instrument
wind = t :: f :: nil 

|||notWind lists all records of non wind instruments
notWind: list Instrument
notWind = g :: p :: nil 
