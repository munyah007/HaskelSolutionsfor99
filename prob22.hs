



addOneMoreNtimes [] n = [] ; addOneMoreNtimes xs 0 = xs ; addOneMoreNtimes xs n =  addOneMoreNtimes ( xs ++ [( (last xs) + 1)]) (n-1)

addOneMoreNtimes  [1] 10

rangeCreator start finish = startaddOneMoreNtimes [ start ] (finish - start )

