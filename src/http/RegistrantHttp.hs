{-# LANGUAGE OverloadedStrings #-}

module RegistrantHttp where

import Web.Scotty
import RegistrantAPI
import Data.Monoid (mconcat)
import Registrant   
import Control.Monad.IO.Class
import Data.Aeson hiding (json)
import Tag
import UpdateRegistrantInput
import Data.Maybe

registrantHttp = do
    get "/registrants" $ do
        result <- liftIO list
        json result

    get "/registrants/:id" $ do
        id <- param "id"
        result <- liftIO $ fetch id
        json result

    patch "/registrants/:id" $ do
        id <- param "id"
        r <- liftIO $ fetch id
        ri <- jsonData
        let r' = merge (fromJust r) ri
        result <- liftIO $ update r'
        json result

    post "/registrants" $ do
        ri <- jsonData
        result <- liftIO $ create ri
        json result
