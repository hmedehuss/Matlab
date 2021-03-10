syms Vc X
eqn = 5 - sqrt(1.4*287*288.15)*sqrt(5*((X/101325)^(0.4/1.4))-1) == 0
S= solve(eqn,X)
floor(S)