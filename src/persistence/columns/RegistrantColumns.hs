{-# language BlockArguments #-}
{-# language DeriveAnyClass #-}
{-# language DeriveGeneric #-}
{-# language DerivingVia #-}
{-# language DuplicateRecordFields #-}
{-# language TypeFamilies #-}

module RegistrantColumns where

import Prelude
import Rel8
import GHC.Generics
import Data.UUID
import Tag

import           Control.Monad.IO.Class  (liftIO)
import           Database.Persist
import           Database.Persist.Sqlite
import           Database.Persist.TH

share [mkPersist sqlSettings, mkMigrate "migrateAll"] [persistLowerCase|
Registrant
    id :: UUID 
    , firstName :: String
    , lastName :: String
    , tags :: [Tag]
    deriving Show
|]

