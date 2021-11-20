module RegistrantAPI where

import Registrant
--import RegistrantDB

fetch :: String -> Registrant
fetch id = Registrant "WHATS UP" "hey"

list :: [Registrant]
list = [Registrant "Jenna" "Murrell", Registrant "Laura" "Murrell"]
