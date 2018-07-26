module Main (main) where

import Network.Wai.Handler.Warp (run)
import qualified Lib


port :: Int
port = 1234


main :: IO ()
main = do
    putStrLn ("serving on port " <> show port)
    run port (\request respond -> Lib.respond request >>= respond)
