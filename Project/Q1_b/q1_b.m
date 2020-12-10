% projectile motion
% We consider the classical projectile problem [21,22] in which a
% projectile is launched from a tower
% of height h > 0, with initial speed v and at an angle θ with respect to
% the horizontal onto a hill, which is defined by the function ω, called
% the impact function which is dependent on the horizontal distance, x. We
% wish to find the optimal launch angle θm which maximizes the horizontal
% distance. In our calculations, we neglect air resistances.
syms x
h = 10;
v = 20;
g = 9.8;
f(x) = h + v^2/(2*g) - g*x^2/(2*v^2);
err = 10^-6;
%%
[root, iterations] = newton_method(30 ,f, err);
disp("Newton Method")
fprintf("Root - %i\n", root);
fprintf("Iterations - %i\n", iterations);
theta = atan(v^2/(root*g));
Method = ['Newton'];
Xm = [root];
Theta = [theta];
Iterations = [iterations];
Accuracy = [err];
%%
[root, iterations] = regula_falsi(0, 30 ,f, err);
disp("Regula Falsi Method")
fprintf("Root - %i\n", root);
fprintf("Iterations - %i\n", iterations);
theta = atan(v^2/(root*g));
Method = [Method; "Regula Falsi"];
Xm = [Xm; root];
Theta = [Theta; theta];
Iterations = [Iterations; iterations];
Accuracy = [Accuracy; err];
%%
[root, iterations] = secant(0, 30 ,f, err);
disp("Secant Method")
fprintf("Root - %i\n", root);
fprintf("Iterations - %i\n", iterations);
theta = atan(v^2/(root*g));
Method = [Method; 'Secant'];
Xm = [Xm; root];
Theta = [Theta; theta];
Iterations = [Iterations; iterations];
Accuracy = [Accuracy; err];
%%
[root, iterations] = steffensen(30 ,f, err);
disp("Steffensen Method")
fprintf("Root - %i\n", root);
fprintf("Iterations - %i\n", iterations);
theta = atan(v^2/(root*g));
Method = [Method; 'Steffensen'];
Xm = [Xm; root];
Theta = [Theta; theta];
Iterations = [Iterations; iterations];
Accuracy = [Accuracy; err];
%%
[root, iterations] = bisection(0, 50, f, err);
disp("Bisection Method")
fprintf("Root - %i\n", root);
fprintf("Iterations - %i\n", iterations);
theta = atan(v^2/(root*g));
Method = [Method; 'Bisection'];
Xm = [Xm; root];
Theta = [Theta; theta];
Iterations = [Iterations; iterations];
Accuracy = [Accuracy; err];
%%
T = table(Method, Xm, Theta, Iterations, Accuracy);
disp(T)