reverser [] = [] ; reverser xs = Data.List.foldl' (\ acc x -> x:acc) [] xs
reverser "k"

paTester [] = "Empty List" ; paTester xs  = if (xs == (reverser xs)) then "Yes it is a Palindrom" else "OOPS! It aint "

