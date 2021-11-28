{-# LANGUAGE DeriveGeneric, TemplateHaskell #-}

module Tag where

import GHC.Generics
import Data.Aeson
import Database.Persist.TH

data Tag = Tall | Short deriving (Generic, Show, Read)
derivePersistField "Tag"

instance ToJSON Tag where

instance FromJSON Tag where