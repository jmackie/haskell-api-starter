{-# LANGUAGE OverloadedStrings #-}
module Lib (respond) where

import Prelude

import Data.ByteString.Lazy (ByteString, fromStrict)
import Network.HTTP.Types as Http
import Network.Wai (Request, Response, responseLBS)
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text (encodeUtf8)


respond :: Request -> IO Response
respond _ = return (plain200 "hello!")


plain200 :: String -> Response
plain200 body =
    responseLBS
        Http.status200
        [(Http.hContentType, "text/plain; charset=utf-8")]
        (encodeUtf8 body)


encodeUtf8 :: String -> ByteString
encodeUtf8 = fromStrict . Text.encodeUtf8 . Text.pack
