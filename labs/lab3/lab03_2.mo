model lab03_2
Real x;
Real y;
Real a = 0.31;
Real b = 0.71;
Real c = 0.15;
Real d = 0.77;
Real t = time;
initial equation
x = 22000;
y = 19000;
equation
der(x) = -a*x - b*y + sin(0.2*t);
der(y) = -c*x*y - d*y + cos(0.2*t);
end lab03_2;
