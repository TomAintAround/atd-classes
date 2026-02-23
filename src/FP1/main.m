% 1.1
A = [1 2 3 4; 5 6 7 8; 9 10 11 12]

% 1.2
B = randi([3 10], size(A))

% 1.3
save("src/FP1/abfile.mat", "A", "B")

% 1.6
A(2,:) = []
B(3,:) = []

% 1.7
Ca = [-3 -2 -1 0]
Cb = [20; 50]
A = [Ca; A]
B = [B Cb]

% 1.8
Cp = [A(1:2,1) B(:,end)]

% 1.9
C = [10 20 30; 40 50 60; 70 80 90]
D = [-1 -2 -3; -4 -5 -6; -7 -8 -9]

% 1.9.1
disp("C + D =")
disp(C + D)

% 1.9.2
disp("C - D =")
disp(C - D)

% 1.9.3
disp("C * D' =")
disp(C * D')

% 1.9.4
disp("C .* D =")
disp(C .* D)

% 1.9.5
disp("C / D =")
disp(C / D)

% 1.9.6
disp("C ./ D =")
disp(C * inv(D))


% 2.1
t = -15:0.02:15;
tDim = size(t)

% 2.2
f = sin(4 * pi * t) + sin(pi * t) + cos(0.5 * pi * t);
figure, plot(t, f, "*r"), xlabel("t (s)"), ylabel("f(t)"), title("Sinal f(t)"), grid on


% 3
syms tsym
fsym = sin(4 * pi * tsym) + sin(pi * tsym) + cos(0.5 * pi * tsym);
f2 = subs(fsym, tsym, t);
figure, plot(t, f2), xlabel("t (s)"), ylabel("f(t)"), title("Sinal f(t)"), grid on
% figure, fplot(tsym, fsym, [-15 15]), xlabel("t (s)"), ylabel("f(t)"), title("Sinal f(t)"), grid on


% 4
x = -4:0.1:4;
y = -4:0.1:4;
[X Y] = meshgrid(x, y);
fxy = sin(X .* Y) + cos(X);
figure, mesh(X, Y, fxy), xlabel("x"), ylabel("y"), zlabel("f(x,y)"), title("Mesh de f(x,y)")
syms xsym ysym
fxysym = sin(xsym * ysym) + cos(xsym);
figure, fmesh(fxysym, [-4 4 -4 4]), xlabel("x"), ylabel("y"), zlabel("f(x,y)"), title("Surf de f(x,y)")


% 5
ytemp = [0 0.7 2.4 3.1 4.2 4.8 5.7 5.9 6.2 6.4 6.3]
xtemp = 0:10
P = polyfit(x, y, 2)
fpoly = polyval(P, xtemp);
plot(xtemp, ytemp, "o", xtemp, fpoly, "-"), xlabel("x"), ylabel("y"), legend("data", "linear fit")


% 6
F = factorial(5)


% 7
Raiz = mySqrt(2, 0.0000000001)