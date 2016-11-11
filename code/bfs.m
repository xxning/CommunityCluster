function  pred = bfs(A,u, index, degree)

n=size(A, 1);
discover=-1*ones(n,1); 
quene=zeros(n,1);  %a quene used for bfs
tail=0;             %the tail of the quene
head=0;             %the head of the quene
tail=tail+1; 
quene(tail)=u; 
pred=-1*ones(1,n); 
i = 1;

while tail-head>0
    head=head+1; 
    v=quene(head); % dequene the head node
    i = i + 1;
    idex = index(v, 1:degree(v));%acquire nodes that link with node v
    for ii=1:degree(v)
        w = idex(ii);
        if discover(w)<0       %have not been discovered,enquene
            tail=tail+1; 
            quene(tail)=w; 
            discover(w)=1;
            pred(w)=v; 
        end
    end
end