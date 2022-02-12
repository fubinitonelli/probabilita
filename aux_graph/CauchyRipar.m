%%%Calcolo funzione di ripartizione per distribuzione di Cauchy 0_1  2_0.5
%%%-1_2
clc, clear

D=50; %density

b=2; %1/ \theta
a=-1; %k

%fun = @(x) -(1/pi)*acot((-a+x)/b)-1/2;

%fun=@(x) (1/pi)*atan((-a+x)/b)+0.5

fun = @(x) -(5734161139222659*atan((a - x)/b))/18014398509481984;

input=linspace(-5,5,D)';

output= ones(D,1);

for i=1:D
    output(i)=fun(input(i));
end

plot(input, output)

[input, output]