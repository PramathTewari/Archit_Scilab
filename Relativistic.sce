//dN/dE for  relativistic fermions 
clc
clear
clf
// define constant
e=1.6e-19
kb=1.38e-23
h=6.6e-34
s=1               //for fermion s=0.5 for boson s= 1
u=-1          //MeV   //for fermion u=1 for boson u=-1
V=1
c=3e8
E=0:0.001:6   //Energy in MeV        max. energy for (f)=2,B=6 
T=[10^9 10^10]   //temperature in kelvin   for f(10^8,10^9) for b(10^9 ,10^10)
cr=(2*s*4*3.14*V)/((h^3)*(c^3))
for j=1:length(T)
    b=1/(kb*T(j))
    for i=1:length(E)
        g(i)=cr*(E(i))^2
        n(j,i)=1/(exp((E(i)-u)*10^6*e*b)-1)     //for fermion +1 ,boson =-1
        f(j,i)=g(i)*n(j,i)
end
end

subplot(1,2,1)
plot(E',f(1,:))
title("Density of Particle vs Energy at temp =")
xlabel("Energy(MeV)")
ylabel("Density of Particle")
xgrid()

subplot(1,2,2)
plot(E',f(2,:))
title("Density of Particle vs Energy at temp =")
xlabel("Energy(MeV)")
ylabel("Density of Particle")
xgrid()
