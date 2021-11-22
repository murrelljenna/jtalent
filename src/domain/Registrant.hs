{-# LANGUAGE DeriveGeneric, RecordWildCards #-}

module Registrant where

import Data.UUID
import Tag
import GHC.Generics
import Data.Aeson

data Registrant = Registrant {id :: UUID 
                             , firstName :: String
                             , lastName :: String
                             , tags :: [Tag]
                             } deriving (Generic, Show)



instance ToJSON Registrant where
