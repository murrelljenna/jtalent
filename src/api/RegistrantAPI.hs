module RegistrantAPI where

import Registrant
import Tag
import UpdateRegistrantInput
--import RegistrantDB

type Id = Integer

fetch :: Id -> IO (Maybe Registrant)
fetch 1 = return $ Just $ Registrant 1 "Peter" "???" [Tall]
fetch x = return Nothing


list :: IO [Registrant]
list = return [Registrant 2 "Jenna" "Murrell" [Short], Registrant 3 "Laura" "Murrell" [Tall], Registrant 4 "Joanna" "Murrell" [Tall]]


update :: Registrant -> IO Registrant
update r = return r


create :: Registrant -> IO Registrant
create r = return r

tag :: Id -> Tag -> IO (Maybe Registrant)
tag id t = do
    r <- fetch id
    let tf = addTag t
    return $ fmap tf r
