import Control.Monad
import Numeric
import Data.Char

main = do
 str <- getLine
 unless (null str) $ do
  let [('0':'x':hex),[char]] = words str
  let [(num,"")]= readHex hex
  let num' = num - 0x4A21 + 0xCAA1
  putStrLn $ (map toUpper $ showHex num' " ") ++ [char]
  main