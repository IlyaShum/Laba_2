import Data.Char (toLower, isAlpha)
import Data.List (elem)

-- Определение переменной alphabet, которая представляет собой список всех букв английского алфавита в нижнем регистре
alphabet :: [Char]
alphabet = ['a'..'z']

-- Определение функции isPangram, которая принимает строку и возвращает логическое значение, указывающее, является ли строка панграммой
isPangram :: String -> Bool
isPangram str = all (`elem` (map toLower str)) alphabet


main :: IO ()
main = do
    -
    putStrLn "Введите строку для проверки на панграмму: "

    
    input <- getLine

    -- Проверка, является ли введенная строка панграммой
    if isPangram input then
        -- Вывод сообщения "True" на экран, если строка является панграммой
        putStrLn "True"
    else
        -- Вывод сообщения "False" на экран, если строка не является панграммой
        putStrLn "False"
