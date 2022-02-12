%%%Calcolo funzione di densità per Gamma
clc, clear

D=50; %density

beta=2; %1/ \theta
alpha=9; %k

fun = @(x) ((beta^alpha)*(x^(alpha-1))*exp(-beta*x))/gamma(alpha);

input=linspace(0,10,D)';

output= ones(D,1);

for i=1:D
    output(i)=fun(input(i));
end

plot(input, output)

[input,output]