kth [] k = Nothing ; kth xs k | k < 0 = Nothing |k <= (length xs) =  Just (xs !! (k-1)) | otherwise = Nothing 

