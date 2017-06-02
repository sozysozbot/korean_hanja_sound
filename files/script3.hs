import Control.Monad
import Data.Function
import Data.List

main = do
 arr <- replicateM 473 action
 let arr2 = [ (b,map snd ar) | ar@((b,c):xs)<- (groupBy ((==) `on` fst) . sortOn fst) arr]
 forM_ arr2 $ \(b,c) ->
  putStrLn (b:'\t':c)


action :: IO (Char,Char)
action = do
 [[a],[b]] <- words <$> getLine 
 return (b,a)