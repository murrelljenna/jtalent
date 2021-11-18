{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import RegistrantAPI
import Data.Monoid (mconcat)
import Registrant
import Control.Monad.IO.Class
import Data.Aeson hiding (json)

main = scotty 3000 $
    get "/registrants" $ do
        json $ fetch "hey"
