%%%Calcolo funzione di densità per Chi-quadro facciamo k = 1,3,5
clc, clear

D=50; %density di punti

kappa=5; 

input=linspace(0,10,D)';

output= ones(D,1);

for i=1:D
    output(i)=chi2pdf(input(i),kappa);
end

plot(input, output)

[input,output]