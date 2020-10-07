module Main where

import Data.Maybe (listToMaybe)
import Data.List ()
import System.IO (hSetBuffering, BufferMode(NoBuffering), stdout)

fac :: (Eq p, Num p) => p -> p
fac n = if n == 0 then 1 else n * fac (n - 1)

f :: Num a => a -> a -> a
f x y = x*x + y*y

eleme :: (Eq a) => a -> [a] -> Bool
eleme _ [] = False
eleme e (x:xs) = (e == x ) || eleme e xs


-- eleme e list =
--     if null list
--         then False
--     else if e == head list
--         then True
--     else eleme e $ tail list

main :: IO ()
main = do
    let l = ['a', 'b', 'c']
    print(elem 'a' l)
    print(elem 'x' l)

--    print (f 4 2.4)
--    print (4^1003)
--    print (sqrt 10.0)

--     hSetBuffering stdout NoBuffering
--     putStr "Type a number: "
--     maybeInt <- fmap maybeRead getLine :: IO (Maybe Int)
--     maybe (putStrLn "That's not an Int!")
--         (putStrLn . ("Here it's factorial: " ++) . show . fac)
--         maybeInt
-- 
-- maybeRead :: Read a => String -> Maybe a
-- maybeRead = fmap fst . listToMaybe . filter (null . snd) . reads