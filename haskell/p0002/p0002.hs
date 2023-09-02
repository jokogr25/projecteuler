module Problem2.Problem2 where

sumOfEvenFibonacciUpTo :: Integer -> Integer
sumOfEvenFibonacciUpTo end = sumOfEvenFibonacciUpTo' 0 1 2
  where
    sumOfEvenFibonacciUpTo' sum fib1 fib2
      | fib2 > end = sum
      | even fib2 = sumOfEvenFibonacciUpTo' (sum + fib2) fib2 (fib1 + fib2)
      | otherwise = sumOfEvenFibonacciUpTo' sum fib2 (fib1 + fib2)

evenFibSum :: Int -> Int
evenFibSum max =
  let evenFibSum' :: Int -> Int -> Int -> Int
      evenFibSum' fib1 fib2 akk =
        if fib2 <= max
          then
            if even fib2
              then evenFibSum' fib2 (fib1 + fib2) akk + fib2
              else evenFibSum' fib2 (fib1 + fib2) akk
          else akk
   in evenFibSum' 1 2 0
