module RegistrantAPI where

import Data.Maybe
import Registrant
--import RegistrantDB

type Id = Integer

fetch :: Id -> IO (Maybe Registrant)
fetch 1 = return $ Just $ Registrant 1 "Peter" "???"
fetch x = return Nothing


list :: IO [Registrant]
list = return [Registrant 2 "Jenna" "Murrell", Registrant 3 "Laura" "Murrell", Registrant 4 "Joanna" "Murrell"]
