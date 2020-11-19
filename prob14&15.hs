duplicator [] = [] ; duplicator xs = ( foldr (\  x acc-> (take 2 ( repeat x )) ++ acc ) [] xs )

replicator [] n = [] ; replicator xs n = ( foldr (\  x acc-> (take n ( repeat x )) ++ acc ) [] xs )


replicator "abc" 5