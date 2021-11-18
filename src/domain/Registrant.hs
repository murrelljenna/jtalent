{-# LANGUAGE DeriveGeneric #-}

module Registrant where


import GHC.Generics
import Data.Aeson

data Registrant = Registrant { firstName :: String
                           , lastName :: String
                           } deriving (Generic, Show)

instance ToJSON Registrant where

instance FromJSON Registrant where
