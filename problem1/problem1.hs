sumOfMultipleOfThreeOrFive :: Integer -> Integer
sumOfMultipleOfThreeOrFive n = sumOfMultipleOfThreeOrFive' 0 0
  where
    sumOfMultipleOfThreeOrFive' akk m
      | m == n = akk
      | (m `mod` 3) == 0 || (m `mod` 5) == 0 = sumOfMultipleOfThreeOrFive' (akk + m) (m + 1)
      | otherwise = sumOfMultipleOfThreeOrFive' akk (m + 1)

ans l = sum [x | x <- l, mod x 3 == 0 || mod x 5 == 0]

sumOfMultipleOfThreeOrFive' l = sum (filter (\x -> (x `mod` 3 == 0) || (x `mod` 5 == 0)) l)
