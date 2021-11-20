module RegistrantAPI where

import Data.Maybe
import Registrant
import Tag
--import RegistrantDB

type Id = Integer

fetch :: Id -> IO (Maybe Registrant)
fetch 1 = return $ Just $ Registrant 1 "Peter" "???" [Tall]
fetch x = return Nothing


list :: IO [Registrant]
list = return [Registrant 2 "Jenna" "Murrell" [Short], Registrant 3 "Laura" "Murrell" [Tall], Registrant 4 "Joanna" "Murrell" [Tall]]

tag :: Id -> Tag -> IO (Maybe Registrant)
tag id t = do
    r <- fetch id
    let tf = addTag t
    return $ fmap tf r
