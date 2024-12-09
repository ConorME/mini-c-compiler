data Token
    = TKeyword String     -- e.g., "int", "if", "return"
    | TIdentifier String  -- e.g., variable names
    | TInteger Int        -- e.g., numeric literals
    | TOperator String    -- e.g., "+", "-", "*", "=="
    | TSeperator String   -- e.g., ";", "{", "}"
    | TWhitespace         -- e.g., spaces, tabs, (ignored)
    | TComment String     -- e.g., "// comments like this one"
    | TError String       -- e.g., for invalid tokens
    deriving (Show, Eq)
