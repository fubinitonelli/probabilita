%%%Calcolo funzione di ripartizione per t di Student
clc, clear

D=70; %density

n=inf;

input=linspace(-5,5,D)';

output= ones(D,1);

for i=1:D
    output(i)=tcdf(input(i),n);
end

plot(input, output)

[input, output]
