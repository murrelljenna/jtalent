{-# LANGUAGE OverloadedStrings #-}

module RegistrantDB where

import Data.List
import qualified Hasql.Connection as Connection
import Registrant
import RegistrantModel
import Connection
import Database.Persist
import Database.Persist.TH
import Database.Persist.Postgresql (ConnectionString, withPostgresqlConn, SqlPersistT, runMigration)
import RegistrantAdapter
import Control.Monad.IO.Class
import Control.Monad.Logger
import Control.Monad.Trans.Reader

connString :: ConnectionString
connString = "host=127.0.0.1 port=5432 user=jtalent dbname=jtalent password=new_password"

runAction :: ConnectionString -> SqlPersistT IO a ->  IO a
runAction connectionString action = runStdoutLoggingT $ withPostgresqlConn connectionString $ \backend ->
  liftIO $ runReaderT action backend

migrateDB :: IO ()
migrateDB = runAction connString (runMigration migrateAll)

list :: IO [Registrant]
list = do
  migrateDB
  let cs = connString
  rm <- runAction (connString) (selectList [] [])
  let rm' = map entityVal rm
  let rs = map registrantOutput rm'
  return rs
