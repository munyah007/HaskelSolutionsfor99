noEl [] = 0 ; noEl xs = ( foldr (\ x acc -> (acc + 1) ) 0 xs )

