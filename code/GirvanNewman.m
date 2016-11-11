function clustering = GirvanNewman(A, k)

while 1
    bt=betweenness(A);
    [~, I] = max(bt(:));               %acquire the index
    [row, col] = ind2sub(size(bt), I); %acquire the index of row and column
    A(col, row) = 0;
    A(row, col) = 0;   %delete the maximal edge 
    [n, clustering] = graphconncomp(A, 'Weak',1);
    if n == k
        break;      
    end
end

clustering=clustering';


