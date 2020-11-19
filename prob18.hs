myDropLastN [] n = [] ; myDropLastN xs n = ( foldl (\  acc  x-> (if ((length acc )== ((length xs) - n ) ) then acc else acc ++ [ x ])) [] xs )
myslicer [] i k = [] ; myslicer xs i k  = ( drop ( i -1 ) ( myDropLastN xs ((length xs ) - k )) )


myslicer  "abcdefgik" 3 7

drop 1 [ 1,2,3,4,5]