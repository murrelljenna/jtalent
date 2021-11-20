{-# LANGUAGE OverloadedStrings #-}

module RegistrantHttp where

import Web.Scotty
import RegistrantAPI
import Data.Monoid (mconcat)
import Registrant   
import Control.Monad.IO.Class
import Data.Aeson hiding (json)
import Tag

registrantHttp = do
    get "/registrants" $ do
        result <- liftIO list
        json result

    get "/registrants/:id" $ do
        id <- param "id"
        result <- liftIO $ fetch id
        json result