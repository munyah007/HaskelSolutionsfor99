myDropN [] n  = [] ; myDropN xs n  = ( foldr (\ x acc -> if (( length acc ) == ((length xs)- n)) then acc else x:acc ) [] xs )
myTakeN [] n = [] ; myTakeN xs n = ( foldl (\ acc x -> if (( length acc ) ==  n) then acc else acc ++ [x] ) [] xs )

mySplitter [] n = ( [], []) ; mySplitter xs n  = ( myTakeN xs n , myDropN xs n )

mySplitter "abcdefgik" 9
