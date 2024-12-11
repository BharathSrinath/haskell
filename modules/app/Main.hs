module Main (main) where
    
import OuterTestModule.InnerTestModule.Test

main :: IO ()
main = do
    putStrLn "Hello, World!"
    testFunc


