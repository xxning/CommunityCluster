function bt = betweenness(A)

n = size(A, 1);
bt = zeros(size(A));

%use shortest path to caculat betweenness
%{
for i=1:n
    [dist,~,pred]=graphshortestpath(A,i);
    for j=i:n
        if dist(j)~=0 && dist(j)<n
            k=dist(j)-1;
            to=j;
            for ii=k:-1:0
                from=pred(to);
                bt(from,to)=bt(from,to)+1;
                to=from;
            end    
        end
    end
end
%}     

%use bfs to caculate betweenness
index = zeros(n, n);
for i = 1:n
    order = find(A(i, :));
    index(i, 1:size(order, 2)) = order; %record the orders of nodes that link with node i
end
degree = sum(full(A) ~= 0, 2);        %record the number of edges that link with each node 
path=zeros(1,n);

%bfs for every node
for i = 1:n
    pred = bfs(A, i, index, degree);
    for j=1:n
        length=0;
        flag=0; %no error
        from=-1;
        to=j;
        length=length+1;
        path(length)=to;
        while from~=i
            if pred(to)~=-1
                from=pred(to);
                to=from;    
                length=length+1;
                path(length)=to;
            else 
                flag=1; %error
                break;
            end
        end
        if flag==0
            for k=1:length-1
                from=path(k+1);
                to=path(k);
                bt(from,to)=bt(from,to)+1;
            end    
        end
    end      
end

