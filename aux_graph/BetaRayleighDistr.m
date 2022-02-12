clc, clear all, close all

%sgm=0.5
%sgm=1
sgm=2

rayleighdens=@(x,sgm) (x/(sgm^2))*(exp(-x^2/(2*sgm^2)))
x=linspace(0,7,70);
vect=zeros(70,2);
x=x';
for i=1:70
vect(i,1)=x(i);
vect(i,2)=rayleighdens(x(i),sgm);
end

plot(vect(:,1),vect(:,2), 'r')
hold on


rayleighripa=@(x,sgm) 1-(exp(-x^2/(2*sgm^2)))
vect2=zeros(70,2);
for i=1:70
vect2(i,1)=x(i);
vect2(i,2)=rayleighripa(x(i),sgm);
end

plot(vect2(:,1),vect2(:,2), 'b')

% a=1;
% b=0.25;
% 
% a=1;
% b=3;
% 
% a=0.5;
% b=1;
% 
% 
% distrobetadensita=@(x,a,b) ((x^(a-1))*(1-x)^(b-1))/(beta(a,b));
% x=linspace(0,1,70);
% vect=zeros(70,2);
% x=x';
% for i=1:70
% vect(i,1)=x(i);
% vect(i,2)=distrobetadensita(x(i),a,b);
% end
% 
% plot(vect)
% 
% vect2=zeros(70,2);
% for i=1:70
% vect2(i,1)=x(i);
% vect2(i,2)=betainc(x(i),a,b);
% end
% plot(vect2)
