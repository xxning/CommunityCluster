%ncut(A,k)
function clustering=NormalizedCut(A,k)

length=size(A,1);
for i=1:length
    d(i)=0;
    for j=1:length
        if A(i,j)~=0
            d(i)=d(i)+1;
        end
    end
end
D=diag(d);
A=D^(-0.5)*(D-A)*D^(-0.5);     
[V,D]=eigs(A,length);
Vn=V(:,length-k+1:length);
clustering=kmeans(Vn,k);