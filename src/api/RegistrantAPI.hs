module RegistrantAPI where

import Registrant
import Tag
import UpdateRegistrantInput
import CreateRegistrantInput
import qualified RegistrantDB as DB

import Data.UUID
import System.Random

newUUID :: IO UUID
newUUID = randomIO

type Id = Integer

fetch :: Id -> IO (Maybe Registrant)
fetch 1 = do
    id <- newUUID
    return $ Just $ Registrant id "Peter" "???" [Tall]
fetch x = return Nothing


list :: IO [Registrant]
list = DB.list

update :: Registrant -> IO Registrant
update r = return r


create :: CreateRegistrantInput -> IO Registrant
create ri = do
    id <- newUUID
    let r = convert id ri
    return r


