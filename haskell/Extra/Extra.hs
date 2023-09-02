module Extra.Extra where

listDiffWithPred :: (a -> a -> Bool) -> [a] -> [a] -> [a]
listDiffWithPred _ [] _ = []
listDiffWithPred _ x [] = x
listDiffWithPred f (x : xs) r =
  if any (f x) r
    then listDiffWithPred f xs r
    else x : listDiffWithPred f xs r
