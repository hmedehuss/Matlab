function result=grader(a,b,varargin)
result = true;

for i=1:length(varargin)
    if isequal(a(varargin{i}),b(varargin{i}))
        result = true;
    else
        result = false;
        break;
    end
end

% Test
% grader(@sin,@max,0)
% grader(@sin,@max,0,1)
% grader(@cos,@cos,0,1,[-pi,0,pi])