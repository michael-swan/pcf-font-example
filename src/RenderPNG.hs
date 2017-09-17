import Codec.Picture.Png
import Codec.Picture.Types
import Data.List
import Graphics.Text.PCF
import System.Environment

-- | USAGE: render-png <font.pcf> <output.png> <text>
main :: IO ()
main = do
    [input_file, output_file, text] <- getArgs
    pcf <- either fail return =<< loadPCF input_file
    case renderPCFText pcf text of
        Just (PCFText _ w h img) ->
            writePng output_file (Image w h img :: Image Pixel8)
        Nothing ->
            putStrLn "ERROR: Unable to render input text."
