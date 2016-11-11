%modularity(A,k)
function clustering=Modularity(A,k)

length=size(A,1);
edge=0;
for i=1:length
    d(i)=0;
    for j=1:length
        if A(i,j)~=0
            d(i)=d(i)+1;
            edge=edge+1;
        end
    end
end

A=A-(d'*d)/edge;  %already multiply 2
[V,~]=eigs(A,k);
Vm=V;
clustering=kmeans(Vm,k);
