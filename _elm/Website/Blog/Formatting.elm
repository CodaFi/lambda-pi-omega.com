module Website.Blog.Formatting where

import Graphics.Element as El

title : String -> Element
title t = layers [ collage 100 50 [ filled (rgb 34 48 54) (circle 24) |> move (-20, 3) ],
                   (toText t) |> typeface "Helvetica-Bold" |> Text.height (24) |> Text.color (rgb 132 151 161) |> text |> El.link "http://www.codafi.me" ]

formatImagefulTitle : (Int, Int) -> String -> String -> Element
formatImagefulTitle (w,h) t im = flow outward [ fittedImage  w h im, 
                                                container 100 h (topLeftAt (absolute 10) (absolute 4)) (title t)
                                              ]                 

formatTitleText : String -> Element
formatTitleText s = (toText s) |> typeface "Helvetica-Bold" |> Text.height (36) |> Text.color (rgb 94 94 93) |> text 