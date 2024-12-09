import Data.Char (isSpace, isDigit, isAlpha)

lexer :: String -> [Token]
lexer [] = []
lexer input@(c:cs)
    | isSpace c = lexer cs
    | isAlpha c = lexKeywordOrIdentifier input
    | isDigit c = lexInteger input
    | c == '/' && not (null cs) && head cs == '/' = lexComment cs
    | c `elem` operators = lexOperator input
    | c `elem` separators = lexSeparator input
    | otherwise = lexError input

-- lexKeywordOrIdentifier :: String -> String -> [Token]
-- lexComment :: String -> [Token]
-- lexInteger :: Integer -> [Token]
