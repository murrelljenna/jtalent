module RegistrantDB where

import Rel8
import Data.List
import qualified Hasql.Connection as Connection
import Registrant
import Connection
import RegistrantSchema
import RegistrantAdapter

list :: IO [Registrant]
list = do 
  Right conn <- Connection.acquire connectionSettings
  return $ select (each registrantSchema) >>= mapM registrantOutput
