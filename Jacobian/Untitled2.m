with(lin);
LieDerivative := proc(f,h,x);
                  multiply(jacobian(h,x),f)
