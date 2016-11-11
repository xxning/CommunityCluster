close all
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%GirvanNewman
load('./DBLP.mat') ;
cluster=GirvanNewman(A,4);
outfile=fopen('DBLP_GirvanNewman.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
    %fprintf(outCut,'\n');
end
fclose(outfile);


load('./football.mat');
cluster=GirvanNewman(A,12);
outfile=fopen('football_GirvanNewman.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);


load('./polbooks.mat');
cluster=GirvanNewman(A,3);
outfile=fopen('polbooks_GirvanNewman.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);


load('./egonet.mat');
A=x;
cluster=GirvanNewman(A,10);%k is unknown
outfile=fopen('egonet_GirvanNewman.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%alinkjaccard
load('./DBLP.mat') ;
cluster=alinkjaccard(A,4);
outfile=fopen('DBLP_alinkjaccard.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
    %fprintf(outCut,'\n');
end
fclose(outfile);

load('./football.mat');
cluster=alinkjaccard(A,12);
outfile=fopen('football_alinkjaccard.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./polbooks.mat');
cluster=alinkjaccard(A,3);
outfile=fopen('polbooks_alinkjaccard.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./egonet.mat');
A=x;
cluster=alinkjaccard(A,10);%k is unknown
outfile=fopen('egonet_alinkjaccard.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NormalizedCut
load('./DBLP.mat') ;
cluster=NormalizedCut(A,4);
outfile=fopen('DBLP_ncut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
    %fprintf(outCut,'\n');
end
fclose(outfile);

load('./football.mat');
cluster=NormalizedCut(A,12);
outfile=fopen('football_ncut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./polbooks.mat');
cluster=NormalizedCut(A,3);
outfile=fopen('polbooks_ncut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./egonet.mat');
A=x;
cluster=NormalizedCut(A,10);%k is unknown
outfile=fopen('egonet_ncut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%RatioCut
load('./DBLP.mat') ;
cluster=RatioCut(A,4);
outfile=fopen('DBLP_rcut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
    %fprintf(outCut,'\n');
end
fclose(outfile);

load('./football.mat');
cluster=RatioCut(A,12);
outfile=fopen('football_rcut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./polbooks.mat');
cluster=RatioCut(A,3);
outfile=fopen('polbooks_rcut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./egonet.mat');
A=x;
cluster=RatioCut(A,10);%k is unknown
outfile=fopen('egonet_rcut.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Modularity
load('./DBLP.mat') ;
cluster=Modularity(A,4);
outfile=fopen('DBLP_modularity.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
    %fprintf(outCut,'\n');
end
fclose(outfile);

load('./football.mat');
cluster=Modularity(A,12);
outfile=fopen('football_modularity.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./polbooks.mat');
cluster=Modularity(A,3);
outfile=fopen('polbooks_modularity.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);

load('./egonet.mat');
A=x;
cluster=Modularity(A,10);%k is unknown
outfile=fopen('egonet_modularity.txt','wt');
for i=1:size(cluster)
    fprintf(outfile,'%d\n',cluster(i));
end
fclose(outfile);




