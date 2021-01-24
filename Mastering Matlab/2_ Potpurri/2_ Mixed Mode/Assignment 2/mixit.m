function out = mixit(A,N)
for i=1:size(A,1)
        N1 = (2/65535)*double(A(i,:))-1;
%         N2 = (2/65535)*double(A(i,2))-1;
        out(i) = N*N1';
end
N3 = max(abs(out));
if N3>1
    out=out/N3;
end
out = out';
end