maxLenghtTaker [] = [] ; maxLenghtTaker  xs = ( foldl (\ acc x -> if (length acc) > ( length x ) then acc else x ) [] xs )

maxLenghtTaker  [ [1,2,3] ,[ 1,2,3,4 , 6,7] ,[ 1,2,3,4] ]
--removes the first sublist whose length matches the provided length , not a great function , has many weaknesses but its meant as a sister fuction
--ie to be called inside a function where the conditions that cause its crrashing are eliminated

removeOnelistOfGivenidentity [] ys = [] ; removeOnelistOfGivenidentity (x:xs ) ys = if  x == ys then xs else x: removeOnelistOfGivenidentity xs ys
removeOnelistOfGivenidentity  [ [1,2,3] ,[ 1,2,3,4 , 6,7] ,[ 1,2,3,4],[ 1,2,3,4] ] [ 1,2,3 ]
-- removes first match of a list whose identity matches that which is provided
sublistSorter [] = [] ; sublistSorter xs =  (sublistSorter (removeOnelistOfGivenidentity xs (maxLenghtTaker xs) )) ++ [ (maxLenghtTaker xs) ]

sublistSorter [ [1,2,3] ,[ 1,2,3,4 , 6,7] ,[ 1,2,3,4] ,[1],[1],[0] ] 
    sublistSorter           ["abc","de","fgh","de","ijkl","mn","o"]
--function below returns all lists in the list with the same length as the head (sisterFunction )
 takeSamelengthAsHead [] = [] ; takeSamelengthAsHead xs  = (foldl (\ acc x -> (if (length x) == (length ( head xs)) then x : acc else acc )) [] xs )
 --function below removes all lists in the list with the same length as the head (sisterFunction )
 removeSamelengthAsHead [] = [] ;removeSamelengthAsHead xs = (foldl (\ acc x -> (if (length x) /= (length ( head xs)) then x : acc else acc )) [] xs )




 removeSamelengthAsHead ["abc","de","fgh","de","ijkl","mn","o"]
grouperBylength [] = [] ; grouperBylength xs = (takeSamelengthAsHead xs) : grouperBylength (removeSamelengthAsHead xs )

 sublistSorter (grouperBylength  ["abc","de","fgh","de","ijkl","mn","o"] )
 subListSorterByLengthFrequency [] = [] ; subListSorterByLengthFrequency xs = (foldr (\ x acc -> x ++ acc) [] (sublistSorter (grouperBylength xs ) ))

 subListSorterByLengthFrequency ["abc","de","fgh","de","ijkl","mn","o"]

