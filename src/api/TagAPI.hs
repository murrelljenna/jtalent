import qualified RegistrantAPI as R
list :: IO [Tag] = do
    rs <- R.list 
