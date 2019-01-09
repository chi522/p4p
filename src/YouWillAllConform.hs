module YouWillAllComform where

import Data.List (groupBy)

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

ranges1 :: [Range]
ranges1 = [(1,2), (3,5), (6,6), (7,9), (10,11), (12,12), (13,13)]

ranges2 :: [Range]
ranges2 = [(3, 5), (7, 9), (12, 12)]

cap2 :: [Cap]
cap2 = "FFBBBFBBBFFBF"

--

pleaseconform :: [Cap] -> [Cmd]
pleaseconform = makeCommands
              . takeEvery2nd
              . map mkRange
              . groupBy eqCap
              . zip [1 ..]

makeCommands :: [Range] -> [Cmd]
makeCommands = map mkCmd

mkCmd :: Range -> Cmd
mkCmd (i, j)
  | i == j = showPos i ++ cmdStr
  | i /= j = showPos i ++ "から"
          ++ showPos j ++ cmdStr

cmdStr :: Cmd
cmdStr = "の人は帽子の向きを変えてください"

showPos :: Pos -> Cmd
showPos pos = show pos ++ "番目"

takeEvery2nd :: [a] -> [a]
takeEvery2nd []         = []
takeEvery2nd (x:[])     = []
takeEvery2nd (x:(y:zs)) = y : takeEvery2nd zs

eqCap :: (Pos, Cap) -> (Pos, Cap) -> Bool
eqCap(_, c) (_, c') = c == c'

mkRange :: [(Pos, Cap)] -> Range
mkRange xs = case head xs of
  (hp, _) ->  case last xs of
    (lp, _) ->  (hp, lp)

--

sample :: [Int]
sample = [1,1,2,3]

twoplus :: Int -> Int
twoplus n = n + 2



