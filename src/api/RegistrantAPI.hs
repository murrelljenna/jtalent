module RegistrantAPI where

import Registrant
--import RegistrantDB

fetch :: Integer -> IO Registrant
fetch 1 = return $ Registrant 1 "Peter" "???"

list :: IO [Registrant]
list = return [Registrant 2 "Jenna" "Murrell", Registrant 3 "Laura" "Murrell", Registrant 4 "Joanna" "Murrell"]
