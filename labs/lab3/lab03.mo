model lab03
Real x;
Real y;
Real a = 0.29;
Real b = 0.66;
Real c = 0.36;
Real d = 0.29;
Real t = time;
initial equation
x = 22000;
y = 19000;
equation
der(x) = -a*x - b*y + sin(t);
der(y) = -c*x - d*y + cos(t);
end lab03;
