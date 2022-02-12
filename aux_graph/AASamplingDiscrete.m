clc, clear

D=30+1; %density
F=D-1;

%%%%%%% parametri
n=30;
A=0;
B=20;


input=linspace(0,F,D)';
%input=linspace(1,F,D-1)'; %solo per geometrica

output= ones(D,1);

for X=1:D
    output(X)=unifpdf(X,A,B);
end

plot(input, output)

[input,output]

[output]



%%%Uniforme discreta  0-20, 5-15, 22-27
%Densità Y = unifpdf(X,A,B)
%Ripartizione P = unifcdf(X,A,B)
%

%%%Binomiale n p 30 0.2   40 0.5   20 0.8
%Densità Y = binopdf(X,N,P)
%Ripartizione P = binocdf(X,N,P)
%

%%%Poisson lambda 1 5 15          %old: 1 3 5
%Densità Y=poisspdf(X, LAMBDA)
%Ripartizione P = poisscdf(X,LAMBDA)
%

%%%Geometrica   P 0.05  0.1  0.2
%Densità Y = geopdf(X,P)
%Ripartizione P = geocdf(X,P)
%
%Matlab compila la geometrica traslata quindi: X(mlab)=X(mia)-1
%però mi ricordo di partire da 1 e di finire comunque a 30
%

%%%Ipergeometrica 500 50 100 - 500 60 200 - 300 50 150
%Densità Y = hygepdf(X,M,K,N)
%Ripartizione P = hygecdf(X,M,K,N)
%
%Posizioni delle variabili come in scheda
%

%%%Pascal r p 5 0.2   10 0.5   50 0.8
%Densità Y = nbinpdf(X,R,P)
%Ripartizione P = nbincdf(X,R,P)
%
%Detta dai crucchi Binomiale negativa, r is the new n, >0. p in [0,1]
%
