
n=20;
Q=zeros(n,10);

load('./football.mat');
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
for s=1:10
for i=1:n
    %cluster=Modularity(A,i); %use different algorithm
    %cluster=alinkjaccard(A,i);
    %cluster=RatioCut(A,i);
    %cluster=NormalizedCut(A,i);
    cluster=GirvanNewman(A,i);
    for j=1:n
        order=find(cluster(:)==j);
        l=size(order);
        for i1=1:l
            for i2=1:l
                if i1~=i2
                    Q(i,s)=Q(i,s)+A(order(i1),order(i2))-(d(i1)*d(i2))/edge;
                end
            end
        end
    end
end 
end
Q=Q/edge;
ans=sum(Q,2);
ans/10
                
                
                
                
                
                
                
                
                
                
    