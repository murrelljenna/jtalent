module RegistrantAPI where

import Registrant
--import RegistrantDB

fetch :: String -> IO Registrant
fetch id = return $ Registrant 1 "WHATS UP" "hey"

list :: IO [Registrant]
list = return [Registrant 2 "Jenna" "Murrell", Registrant 3 "Laura" "Murrell", Registrant 4 "Joanna" "Murrell"]
