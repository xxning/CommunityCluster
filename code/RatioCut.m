%rcut(A,k)
function clustering=RatioCut(A,k)

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
A=D-A;     
[V,D]=eigs(A,length);
Vr=V(:,length-k+1:length);%length-k-2:length-1
clustering=kmeans(Vr,k);