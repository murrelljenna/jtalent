module RegistrantAdapter where

import Prelude hiding (id)

import RegistrantModel
import Registrant
import Rel8
import Tag
import Control.Monad.IO.Class

import Database.Persist
import Database.Persist.TH

--registrantInput :: Registrant -> RegistrantColumns


registrantOutput :: RegistrantModel -> Registrant
registrantOutput registrantModel = do
    r <- registrantModel
    Registrant $
        (registrantModelId registrantModel) 
        (registrantModelFirstName registrantModel) 
        (registrantModelLastName registrantModel) 
        (registrantModelTags registrantModel) 
    