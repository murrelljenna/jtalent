{-# LANGUAGE DeriveGeneric, RecordWildCards #-}

module UpdateRegistrantInput where

import Tag
import GHC.Generics
import Data.Aeson
import Data.Maybe
import Registrant
import Prelude hiding (id)

data UpdateRegistrantInput = UpdateRegistrantInput 
    { firstNameM :: Maybe String
    , lastNameM :: Maybe String
    , tagsM :: Maybe [Tag]
    } deriving (Generic)

merge :: Registrant -> UpdateRegistrantInput -> Registrant
merge r ri = Registrant 
    (id r)
    (fromMaybe (firstName r) (firstNameM ri))
    (fromMaybe (lastName r) (lastNameM ri))
    (fromMaybe (tags r) (tagsM ri))

instance FromJSON UpdateRegistrantInput where