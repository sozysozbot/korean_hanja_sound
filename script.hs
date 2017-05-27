import Control.Monad
import Numeric

main = do
 str <- getLine
 unless (null str) $ do
  let [('0':'x':hex),[char]] = words str
  let [(num,"")]= readHex hex
  let num' = num - 0x4A21 + 0xCAA1
  putStrLn $ showHex num' " " ++ [char]
  main