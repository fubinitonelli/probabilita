%%%Calcolo funzione di densità per t di Student n= 1 3 5 inf?
clc, clear

D=70; %density

n=inf;

input=linspace(-5,5,D)';

output= ones(D,1);

for i=1:D
    output(i)=tpdf(input(i),n);
end

plot(input, output)

[input,output]