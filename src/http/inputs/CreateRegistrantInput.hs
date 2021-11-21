{-# LANGUAGE DeriveGeneric, RecordWildCards #-}

module CreateRegistrantInput where

import Tag
import GHC.Generics
import Data.Aeson
import Data.Maybe
import qualified Registrant as R
import Prelude hiding (id)

data CreateRegistrantInput = CreateRegistrantInput 
    { firstName :: String
    , lastName :: String
    , tags :: [Tag]
    } deriving (Generic)

convert :: CreateRegistrantInput -> R.Registrant
convert (CreateRegistrantInput {..}) = R.Registrant 
    0
    firstName
    lastName
    tags

instance FromJSON CreateRegistrantInput where