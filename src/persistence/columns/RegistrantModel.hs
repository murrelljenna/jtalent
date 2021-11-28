{-# LANGUAGE EmptyDataDecls             #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses      #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE QuasiQuotes                #-}
{-# LANGUAGE TemplateHaskell            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE DeriveAnyClass #-}

module RegistrantModel where

import Prelude
import Rel8
import GHC.Generics
import Data.UUID
import Tag

import Control.Monad.IO.Class  (liftIO)
import Database.Persist
import Database.Persist.TH
import Database.Persist.Postgresql

share [mkPersist sql Settings, mkMigrate "migrateAll"] [persistLowerCase|
RegistrantModel sql=Registrants
    id String
    firstName String
    lastName String
    tags [Tag]
    deriving Show
|]

