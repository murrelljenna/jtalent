{-# LANGUAGE DeriveGeneric, RecordWildCards #-}

module CreateRegistrantInput where

import Tag
import GHC.Generics
import Data.Aeson
import Data.Maybe
import qualified Registrant as R
import Prelude hiding (id)
import Data.UUID

data CreateRegistrantInput = CreateRegistrantInput 
    { firstName :: String
    , lastName :: String
    , tags :: [Tag]
    } deriving (Generic)

convert :: UUID -> CreateRegistrantInput -> R.Registrant
convert id (CreateRegistrantInput {..}) = R.Registrant 
    id
    firstName
    lastName
    tags

instance FromJSON CreateRegistrantInput where