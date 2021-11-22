module RegistrantAdapter where

import Prelude hiding (id)

import RegistrantColumns
import Registrant
import Rel8
import Tag
import Control.Monad.IO.Class

--registrantInput :: Registrant -> RegistrantColumns


registrantOutput :: RegistrantColumns Result -> Registrant
registrantOutput registrantColumn = Registrant (idColumn registrantColumn) (firstNameColumn registrantColumn) (lastNameColumn registrantColumn) [Tall]