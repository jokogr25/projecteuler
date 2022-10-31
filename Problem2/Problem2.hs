module Problem2.Problem2 where

sumOfEvenFibonacciUpTo :: Integer -> Integer
sumOfEvenFibonacciUpTo end = sumOfEvenFibonacciUpTo' 0 1 2
  where
    sumOfEvenFibonacciUpTo' sum fib1 fib2
      | fib2 > end = sum
      | even fib2 = sumOfEvenFibonacciUpTo' (sum + fib2) fib2 (fib1 + fib2)
      | otherwise = sumOfEvenFibonacciUpTo' sum fib2 (fib1 + fib2)
