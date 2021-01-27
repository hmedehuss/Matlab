t=[0, pi/4, pi/2, 3*pi/4, pi];
disp(['Sine @', num2str(t(1)),' is equal to: ', num2str(sin(t(1))) ])
disp(['Sine @', num2str(t(2)),' is equal to: ', num2str(sin(t(2))) ])
disp(['Sine @', num2str(t(3)),' is equal to: ', num2str(sin(t(3))) ])
disp(['Sine @', num2str(t(4)),' is equal to: ', num2str(sin(t(4))) ])
disp(['Sine @', num2str(t(5)),' is equal to: ', num2str(sin(t(5))) ])

fprintf('fprintf \n')
fprintf('Sine @ %1.5f is equal to: %2.5f\n', t, sin(t));



fprintf('Example Clock \n')
format short G
TT=clock;
display('This year is: '); disp(TT(1));
display('This month is: '); disp(TT(2));
display('Day of this month: '); disp(TT(3));
disp('Current time is '); display(['hour: ', num2str(TT(4))]);
display(['minutes: ', num2str(TT(5))]);
fprintf('fprintf \n')
fprintf('Year:%g; Month: %g; Day: %g; Hour: %g; Min passed: %g\n',...
TT(1), TT(2), TT(3), TT(4), TT(5))