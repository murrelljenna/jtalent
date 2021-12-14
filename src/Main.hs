import RegistrantHttp
import Web.Scotty
import Network.Wai.Middleware.Cors

main = scotty 3000 $ do
    middleware simpleCors
    registrantHttp