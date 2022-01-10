{-# LANGUAGE OverloadedStrings, ExtendedDefaultRules #-}

import Lucid
import Lucid.HTMX
import Lucid.Supplemental hiding (svg_)
import System.IO (stdout, hSetEncoding, utf8)
import Data.Text.Lazy.IO as L

main :: IO ()
main = do
  hSetEncoding stdout utf8
  L.hPutStr stdout (renderText template1)


-- Template for file: test1.html
template1 :: Html ()
template1 = do
  div_ [ hxInclude_ "#checked-contacts", hxTarget_ "#tbody" ] $ do
    a_ [ class_ "btn", hxPut_ "/activate" ] $ "Activate"
    a_ [ class_ "btn", hxPut_ "/deactivate" ] $ "Deactivate"
  form_ [ id_ "checked-contacts" ] $ table_ $ do
    thead_ $ tr_ $ do
      th_ ""
      th_ "Name"
      th_ "Email"
      th_ "Status"
    tbody_ [ id_ "tbody" ] $ do
      tr_ [ class_ "" ] $ do
        td_ $ input_ [ type_ "checkbox", name_ "ids", value_ "0" ]
        td_ "Joe Smith"
        td_ "joe@smith.org"
        td_ "Active"
      "\n      ...\n    "

