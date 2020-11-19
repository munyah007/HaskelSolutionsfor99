data NestedList a = Elem a | List [ NestedList a ]

converters ( Elem x ) = [ x ] ; converters ( List xs ) = (foldl (\ acc x -> (converters x ) ++ acc ) [] xs )




 
allConvertor xs = ( foldl (\ acc x -> ( converters x ) ++ acc ) [] xs )

allConvertor [ Elem 2 , Elem 7 , List [ Elem 2 , Elem 7 ] ]  

allConvertor []

allConvertor (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])