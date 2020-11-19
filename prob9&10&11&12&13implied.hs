grouper [] = [] ; grouper (x:[]) = [ [x] ] ; grouper ( x : xs ) = [ x | x<-(x:(takeWhile (\ arg -> ( x==arg )) xs  )) : grouper ( dropWhile (\ arg -> ( x==arg )) xs  ), ( not (x ==""))] 





lengthEncoder [] = [] ;lengthEncoder xs =  foldl (\ acc x -> ((length x ), (head x)):acc ) [] (grouper xs )

// for problem 11 

data LenghtEnc a = Ident a | Mapped ( Int , a ) deriving ( Show,Read,Eq)
data 

modLengthEncoder [] = [] ; modLengthEncoder xs = [ if ((fst x )==1) then (Ident (snd x)) else (Mapped x ) | x <- (lengthEncoder xs) ]

modLengthEncoder 

 grouper  [ 2 ,4, 4,4,4,6,8,8]

(Ident $ snd $ (lengthEncoder  ['a','a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']) !! 0 ): []

(takeWhile odd [ '2' ,'4', '4','4','4','6','8','8'])

modLengthEncoder  ['a','a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']

// for problem 12 

 decoder (Ident x) = [ x ] ; decoder (Mapped ( y , x  )) = (take y (repeat x ))

allDecoder [] = [] ; allDecoder xs = foldl (\ acc x -> (decoder x) ++ acc ) [] xs 

//