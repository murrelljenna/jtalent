module RegistrantAdapter where

import Prelude hiding (id)

import RegistrantModel
import Registrant
import Tag
import Control.Monad.IO.Class
import Data.UUID
import Data.Maybe

import Database.Persist
import Database.Persist.TH

--registrantInput :: Registrant -> RegistrantColumns


registrantOutput :: RegistrantModel -> Registrant
registrantOutput registrantModel = 
  Registrant 
   (fuckYou registrantModel)
   (registrantModelFirstName registrantModel)
   (registrantModelLastName registrantModel)
   (registrantModelTags registrantModel)

fuckYou :: RegistrantModel -> UUID
fuckYou rm = fromJust (fromString (registrantModelIdCode rm))