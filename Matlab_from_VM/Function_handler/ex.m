F1 = @MY_function;
x = F1( 1, 2, 3);
f =@(x,a1,a2,a3)(a1*x^2+a2*x+a3)

%% Moreover, the function handles can be used to define a function of functions.
% For example, H = 2esin(x) can be expressed in three ways with the following function of
% functions:

ff1 = @(x) sin(x); ff2 = @(ff1)exp(ff1); ff3 = @(ff2)2*ff2; % 1 – Way
gg1 = @(x)sin(x); gg2 = @(x)exp(gg1(x)); gg3 = @(x) 2*gg2(x); % 2 – Way
hh3=@(x)2*exp(sin(x)); % 3 – Way
ff3(ff2(ff1(pi)))
gg3(pi)
hh3(pi)
x=1.3; a1=2; a2=-3; a3=13; f (x, a1, a2, a3)
F1=inline('a1*x^2+a2*x+a3', 'a1', 'a2', 'a3', 'x')
x=1.3; a1=2; a2=-3; a3=13; F1(a1, a2, a3, x)