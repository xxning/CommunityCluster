%alinkjaccard(A,k)
function clustering=alinkjaccard(A,k)

D=pdist(A,'jaccard');
Z = linkage(D,'average');
clustering=cluster(Z,k);
