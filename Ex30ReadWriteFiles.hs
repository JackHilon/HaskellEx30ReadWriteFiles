import Data.List
import System.IO


sayHello::IO ()
sayHello = do 
    putStr("Enter your name: ")
    name <- getLine
    putStrLn $ "Hello, " ++ name ++ "!!!"

----- Write to a File ----------------------------------------------
writeToFile = do
    file <- openFile "test.txt" WriteMode      -- if file does not exist, it will create it
    hPutStrLn file ("random text 86543345667")
    hClose file


----- Read from File -----------------------------------------------
readFromFile = do 
    file <- openFile "test.txt" ReadMode
    contents <- hGetContents file
    putStrLn contents
    hClose file


main = do 
    sayHello
    putStrLn(".........................")
    writeToFile
    readFromFile
