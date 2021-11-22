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

addTag :: Tag -> Registrant -> Registrant
addTag t (Registrant{..}) = Registrant id firstName lastName (tags ++ [t])

instance ToJSON Registrant where
