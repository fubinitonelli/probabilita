%%%Calcolo funzione di ripartizione per Gamma
clc, clear

D=50; %density

beta=2; %1/ \theta
alpha=9; %k

fun = @(x) gammainc(beta*x, alpha);

input=linspace(0,10,D)';

output= ones(D,1);

for i=1:D
    output(i)=fun(input(i));
end

plot(input, output)

[input, output]

%La funzione sembra errata, ma è così: si confronti l'help di matlab con
%wikipedia: https://it.wikipedia.org/wiki/Funzione_gamma_incompleta
