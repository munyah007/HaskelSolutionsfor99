rotator xs 0 = xs ; rotator ys@(x:xs) n  | n > 0 =  rotator (xs ++ [x]) (n - 1) | n < 0 =  rotator ((last ys):(init ys)) (n + 1)


rotator  "abcdefgh" (-2)