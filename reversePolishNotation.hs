




separateIntoOpsAndNums xs = filter     (\z -> not (all (\t -> (Data.Char.isSeparator t)) z )) (Data.List.groupBy ( \ x y -> (Data.Char.isSeparator x ) == (Data.Char.isSeparator y ) ) xs)

separateIntoOpsAndNums "100.3 10 + 3"



symbolProcessor sym  | sym == '+' = (+) | sym == '-' = (-) | sym == '*' = (*)


foldl (\acc x -> if  (Data.Char.isAlphaNum (head x ))  then (acc ++ [x]) else  (init (init acc) ) ++ [(show  ((symbolProcessor (head x ))  (read ( acc !! ((length acc) -2)):: Int) (read (last acc):: Int ))) ]) [] (separateIntoOpsAndNums str)
                   

removeIndexSupplied xs n = 

let str = "10 4 3  + 2  * -"


reversePolishAlgo xs = foldl (\acc x -> if  (Data.Char.isAlphaNum (head x ))  then (acc ++ [x]) else  (init (init acc) ) ++ [(show  ((symbolProcessor (head x ))  (read ( acc !! ((length acc) -2)):: Int) (read (last acc):: Int ))) ]) [] (separateIntoOpsAndNums xs)
                   

reversePolishAlgo str