
partitioner [] n = [] ; partitioner xs n =  [ x | x<-(take n xs ): (partitioner ( drop n xs ) n ) ]

dropNth [] n = [] ; dropNth xs n = ( foldr (\ x acc -> x ++ acc) []  ( map (\x -> if (length x)==n then (init x ) else x ) (partitioner xs n )))



dropNth ['a','b','c','d','e','f','g','h','i','k'] 3