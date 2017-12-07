module Diamond where

import System.Environment
import Data.Char

-- main = do
--     ((c:_):_) <- getArgs
--     putStr . unlines . generateDiamond $ c

generateDiamond :: Char -> [String]
generateDiamond c =
    map
        (generateLine $ diamondSize c)
        (linesToGenerate c)

linesToGenerate :: Char -> [Char]
linesToGenerate c = let (x:xs) = reverse ['A'..c] in
                        (reverse xs) ++ [x] ++ xs

generateLine :: Int -> Char -> String
generateLine 1 'A' = "A"
generateLine 1 _ = " "
generateLine n c
    | n == diamondSize c = [c] ++ (generateLine (n - 2) c) ++ [c]
    | otherwise = " " ++ (generateLine (n - 2) c) ++ " "

diamondSize :: Char -> Int
diamondSize c =
    2 * indexInAlphabet + 1
    where indexInAlphabet = (ord c) - (ord 'A')