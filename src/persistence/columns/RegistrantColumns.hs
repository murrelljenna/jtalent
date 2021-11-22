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

data RegistrantColumns f = RegistrantColumns 
  { idColumn :: Column f UUID
  , firstNameColumn :: Column f String
  , lastNameColumn :: Column f String 
  } 
  deriving stock (Generic)
  deriving anyclass (Rel8able)
