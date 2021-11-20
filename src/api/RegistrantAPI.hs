module RegistrantAPI where

import Registrant
--import RegistrantDB

fetch :: String -> IO Registrant
fetch id = liftIO Registrant "WHATS UP" "hey"

list :: IO [Registrant]
list = liftIO [Registrant "Jenna" "Murrell", Registrant "Laura" "Murrell"]
