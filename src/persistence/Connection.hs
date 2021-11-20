{-# LANGUAGE OverloadedStrings #-}

module Connection where 

import qualified Hasql.Connection as Connection

connectionSettings = Connection.settings "localhost" 5432 "postgres" "" "postgres"
