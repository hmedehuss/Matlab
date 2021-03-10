function distance=get_distance(A,B)
[num,text,raw] = xlsread('Distances.xlsx');
index1 = find(strcmp(text,A))
index2 = find(strcmp(text,B))
if isempty(index1) || isempty(index2)
    error('cities not found');
end
distance = raw{index1(1), index2(1)};
