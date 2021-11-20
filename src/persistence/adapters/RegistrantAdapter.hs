module RegistrantAdapter where

import RegistrantColumns
import Registrant
import Rel8

--registrantInput :: Registrant -> RegistrantColumns


registrantOutput :: RegistrantColumns Expr -> Registrant
registrantOutput registrantColumn = Registrant (firstNameColumn registrantColumn) (lastNameColumn registrantColumn)