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

data RegistrantColumns f = RegistrantColumns 
  { firstNameColumn :: Column f String
  , lastNameColumn :: Column f String 
  } 
  deriving stock (Generic)
  deriving anyclass (Rel8able)
