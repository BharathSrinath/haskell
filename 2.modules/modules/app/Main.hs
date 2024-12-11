module Main (main) where
    
import Outertest.Innertest.Test

main :: IO ()
main = do
    putStrLn "Hello, World!"
    testFunc