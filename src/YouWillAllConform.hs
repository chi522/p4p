module YouWillAllComform where

type Cap = Char
{-
'F' 前向き
'B' 後向き
-}

type Cmd = String

type Pos = Int
type Range = (Pos, Pos)

--

cap1 :: [Cap]
cap1 = "FFBBBFBBBFFBF"

pospos1 :: [Range]
pospos1 = [(3, 5), (7, 9), (12, 12)]

cap2 :: [Cap]
cap2 = "FFBBBFBBBFFBF"

--

pleaseconform ::  [Cap] -> [Cmd]
pleaseconform = makeCommands . takeEvery2nd .gonyogonyo

makeCommands :: [Range] -> [Cmd]
makeCommands = map mkCmd

mkCmd :: Range -> Cmd
mkCmd (i, j)
  | i == j = showPos i ++ cmdStr
  | i == j = showPos i ++ "から"
          ++ showPos j ++ cmdStr

cmdStr :: Cmd
cmdStr = "の人は帽子の向きを変えてください"

showPos :: Pos -> Cmd
showPos pos = show pos ++ "番目"

takeEvery2nd :: [a] -> [a]
takeEvery2nd []         = []
takeEvery2nd (x:[])     = []
takeEvery2nd (x:(y:zs)) = y : takeEvery2nd zs

gonyogonyo :: [Cap] -> [Range]
gonyogonyo = undefined


--

sample :: [Int]
sample = [1,1,2,3]

twoplus :: Int -> Int
twoplus n = n + 2


