{-# LANGUAGE DeriveGeneric #-}

module Tag where

import GHC.Generics
import Data.Aeson

data Tag = Tall | Short deriving (Generic, Show)

instance ToJSON Tag where

instance FromJSON Tag where