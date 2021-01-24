function r=reversal(v)
if length(v)==1
    r = v(1)
else
    r = [ reversal(v(2:end)) v(1)];
end

% v = [1 2 3 4 5];
% w = reversal(v)
