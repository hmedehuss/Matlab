function [table summa]= multable(n,m)
%MULTABLE   multiplication table 
%   T= MULTABLE(N) returns NxN matrix
%   containing the multiplication table for
%   the integers 1 through N
%   MULTABLE(N,M) returns N-by-M matrix 
%   Bot input arguments must be positive 
%   integers
%   [T S] = MULTABLE(...) returns the matrix 
%   containing the multiplication table in T
%   and the sum of all its elements in S

if nargin<1
    error('must have at least one input argument');
end
if nargin<2 
    m=n;
elseif ~isscalar(m) || m<1 || m~=fix(m)
    error('m needs to be positive integer');
end
if ~isscalar(n) || n<1 || n~=fix(n)
   error('n needs to be positive integer');
end

table = (1:n)'*(1:m);

if nargout >1
    summa = sum(table(:))
end

