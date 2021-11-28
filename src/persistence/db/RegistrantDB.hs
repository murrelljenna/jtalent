module RegistrantDB where

import Rel8
import Data.List
import qualified Hasql.Connection as Connection
import Registrant
import Connection
import Database.Persist
import Database.Persist.TH
import RegistrantAdapter
import Control.Monad.IO.Class

list :: IO [Registrant]
list = do
  rs <- selectList [] []
  let rs' = map registrantOutput $ entityVal rs
  return rs
