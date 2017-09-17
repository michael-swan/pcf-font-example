import Graphics.Text.PCF
import System.Environment

-- | USAGE: render-text <font.pcf.gz> <text>
main :: IO ()
main = do
    [font_file, text] <- getArgs
    pcf <- either fail return =<< loadPCF font_file
    case renderPCFText pcf text of
        Just pcf_text ->
            putStrLn $ pcf_text_ascii pcf_text
        Nothing ->
            putStrLn "ERROR: Unable to render input text."
