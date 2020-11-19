kthRemover [] k = ( [] , [] ) ; kthRemover xs k =  ([(last (take k xs) )] , ((init (take k xs) ) ++ ( drop k xs )))

 kthRemover "abcd" 2

kthInsertor [] k item = [] ; kthInsertor xs k item = (take (k-1) xs ) ++ [item] ++ ( drop (k-1) xs)


kthInsertor "abcd" 2 'X'