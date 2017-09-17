{-# LANGUAGE TemplateHaskell #-}
import Graphics.Text.PCF
import Graphics.Text.PCF.Embed

-- | USAGE: render-text-static
main :: IO ()
main = putStrLn $ pcf_text_ascii $(embedPCFText "fonts/gohufont-14.pcf.gz" "Hello!")
