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


-- Template for file: test.html
template1 :: Html ()
template1 = do
  toHtmlRaw  "<!-- This example requires Tailwind CSS v2.0+ -->"
  div_ [ class_ "py-12 bg-white" ] $ div_ [ class_ "max-w-7xl mx-auto px-4 sm:px-6 lg:px-8" ] $ do
    div_ [ class_ "lg:text-center" ] $ do
      h2_ [ class_ "text-base text-indigo-600 font-semibold tracking-wide uppercase" ] $ "Transactions"
      p_ [ class_ "mt-2 text-3xl leading-8 font-extrabold tracking-tight text-gray-900 sm:text-4xl" ] $ " A better way to\n                send money "
      p_ [ class_ "mt-4 max-w-2xl text-xl text-gray-500 lg:mx-auto" ] $ " Lorem ipsum dolor sit amet consect adipisicing\n                elit. Possimus magnam voluptatum cupiditate veritatis in accusamus quisquam. "
    div_ [ class_ "mt-10" ] $ dl_ [ class_ "space-y-10 md:space-y-0 md:grid md:grid-cols-2 md:gap-x-8 md:gap-y-10" ] $ do
      div_ [ class_ "relative" ] $ do
        dt_ $ do
          div_ [ class_ "absolute flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white" ] $ do
            toHtmlRaw  "<!-- Heroicon name: outline/globe-alt -->"
            svg_ [ class_ "h-6 w-6", xmlns_ "http://www.w3.org/2000/svg", fill_ "none", viewBox_ "0 0 24 24", stroke_ "currentColor", ariaHidden_ "true" ] $ path_ [ strokeLinecap_ "round", strokeLinejoin_ "round", strokeWidth_ "2", d_ "M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9" ]
          p_ [ class_ "ml-16 text-lg leading-6 font-medium text-gray-900" ] $ "Competitive exchange rates"
        dd_ [ class_ "mt-2 ml-16 text-base text-gray-500" ] $ " Lorem ipsum, dolor sit amet consectetur adipisicing\n                        elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.\n                    "
      div_ [ class_ "relative" ] $ do
        dt_ $ do
          div_ [ class_ "absolute flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white" ] $ do
            toHtmlRaw  "<!-- Heroicon name: outline/scale -->"
            svg_ [ class_ "h-6 w-6", xmlns_ "http://www.w3.org/2000/svg", fill_ "none", viewBox_ "0 0 24 24", stroke_ "currentColor", ariaHidden_ "true" ] $ path_ [ strokeLinecap_ "round", strokeLinejoin_ "round", strokeWidth_ "2", d_ "M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3" ]
          p_ [ class_ "ml-16 text-lg leading-6 font-medium text-gray-900" ] $ "No hidden fees"
        dd_ [ class_ "mt-2 ml-16 text-base text-gray-500" ] $ " Lorem ipsum, dolor sit amet consectetur adipisicing\n                        elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.\n                    "
      div_ [ class_ "relative" ] $ do
        dt_ $ do
          div_ [ class_ "absolute flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white" ] $ do
            toHtmlRaw  "<!-- Heroicon name: outline/lightning-bolt -->"
            svg_ [ class_ "h-6 w-6", xmlns_ "http://www.w3.org/2000/svg", fill_ "none", viewBox_ "0 0 24 24", stroke_ "currentColor", ariaHidden_ "true" ] $ path_ [ strokeLinecap_ "round", strokeLinejoin_ "round", strokeWidth_ "2", d_ "M13 10V3L4 14h7v7l9-11h-7z" ]
          p_ [ class_ "ml-16 text-lg leading-6 font-medium text-gray-900" ] $ "Transfers are instant"
        dd_ [ class_ "mt-2 ml-16 text-base text-gray-500" ] $ " Lorem ipsum, dolor sit amet consectetur adipisicing\n                        elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.\n                    "
      div_ [ class_ "relative" ] $ do
        dt_ $ do
          div_ [ class_ "absolute flex items-center justify-center h-12 w-12 rounded-md bg-indigo-500 text-white" ] $ do
            toHtmlRaw  "<!-- Heroicon name: outline/annotation -->"
            svg_ [ class_ "h-6 w-6", xmlns_ "http://www.w3.org/2000/svg", fill_ "none", viewBox_ "0 0 24 24", stroke_ "currentColor", ariaHidden_ "true" ] $ path_ [ strokeLinecap_ "round", strokeLinejoin_ "round", strokeWidth_ "2", d_ "M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" ]
          p_ [ class_ "ml-16 text-lg leading-6 font-medium text-gray-900" ] $ "Mobile notifications"
        dd_ [ class_ "mt-2 ml-16 text-base text-gray-500" ] $ " Lorem ipsum, dolor sit amet consectetur adipisicing\n                        elit. Maiores impedit perferendis suscipit eaque, iste dolor cupiditate blanditiis ratione.\n                    "

