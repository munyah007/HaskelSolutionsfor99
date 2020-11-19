compressor [] = [] ; compressor (x:[]) = [x] ; compressor (x:xs) = x : compressor (dropWhile (\arg -> ( x == arg )) xs )

dropWhile odd [ 1,2,3,4] 

compressor 
   compressor   $ foldr (\ x acc -> x :acc) ""['a','a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']