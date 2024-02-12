sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3

printInc n = print plusTwo
  where
    plusTwo = n + 2

printInc2 n =
  let plusTwo = n + 2
   in print plusTwo

mult1 = x * y where x = 5; y = 6

waxOn = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ 2
