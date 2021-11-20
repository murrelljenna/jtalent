{-# language OverloadedStrings #-}

module RegistrantSchema where

import Rel8
import RegistrantColumns
import Registrant hiding (firstName, lastName)

registrantSchema :: TableSchema (RegistrantColumns Name)
registrantSchema = TableSchema
  { name = "registrant"
  , schema = Nothing
  , columns = RegistrantColumns
    { firstNameColumn = "first_name"
    , lastNameColumn = "last_name"
    }
  }
