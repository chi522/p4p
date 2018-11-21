module YouWillAllComform where

type Cap = Char
{-
'F' 前向き
'B' 後向き
-}

type Cmd = String

type Pos = Int

--

cap1 :: [Cap]
cap1 = "FFBBBFBBBFFBF"

cap2 :: [Cap]
cap2 = "FFBBBFBBBFFFF"

--

pleaseConform ::  [Cap] -> [Cmd]
pleaseConform = map mkCmd . gonyogonyo

mkCmd ::(Pos, Pos) -> Cmd
mkCmd(i, j) = showPos i ++ "から"
           ++ showPos j ++ "の人は帽子の向きを変えてください"

showPos pos = show pos ++ "番目"

gonyogonyo :: [Cap] -> [(Pos, Pos)]
gonyogonyo = undefined

--

sample :: [Int]
sample = [1,1,2,3,5,8,13]

twoplus :: Int -> Int
twoplus n = n + 2

hoge = map twoplus
