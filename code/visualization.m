
load('./egonet.mat') ;
outfile=fopen('edge_egonet.txt','wt');
n=size(A,1);
edge=0;
for i=1:n
    for j=i+1:n
        if A(i,j)~=0
            fprintf(outfile,'%d %d\n',i,j);
            edge=edge+1;
        end
    end
end
edge
        