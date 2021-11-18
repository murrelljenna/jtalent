{-# LANGUAGE OverloadedStrings #-}
import Web.Scotty
import PerformerAPI
import Data.Monoid (mconcat)
import Performer
import Control.Monad.IO.Class

printName :: Performer -> IO ()
printName (Performer { firstName = name }) = putStrLn name

main = scotty 3000 $
    get "/:word" $ do
        beam <- param "word"
        let lol = fetch "hey"
        liftIO (printName lol)
        html $ mconcat ["<h1>Scotty, ", beam, " me up!</h1>"]
