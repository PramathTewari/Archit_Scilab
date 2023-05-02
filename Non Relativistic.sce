//dN/dE for non relativistic fermions 
clc
clear
clf
// define constant
e=1.6e-19
kb=1.38e-23
h=6.6e-34
s=0.5               //for fermion s=0.5 for boson s= 1
u=1             //for fermion u=1 for boson u=-1
V=1
m=9.1e-31      //m(F)=9.1e-31 or m(B)=4*1.66e-27
E=0:0.001:2   //Energy in eV        upper limit(f)=2,B=0.5
T=[100 1000]   //temperature in kelvin 
cn=(2*s+1)*(2*3.14*V*(2*m)^1.5)/(h^3)
for j=1:length(T)
    b=1/(kb*T(j))
    for i=1:length(E)
        g(i)=cn*(E(i))^0.5
        n(j,i)=1/(exp((E(i)-u)*e*b)+1)     //for fermion +1 ,boson =-1
        f(j,i)=g(i)*n(j,i)
end
end

subplot(1,2,1)
plot(E',f(1,:))
title("Density of Particle vs Energy at temp =")
xlabel("Energy(eV)")
ylabel("Density of Particle")
xgrid()

subplot(1,2,2)
plot(E',f(2,:))
title("Density of Particle vs Energy at temp =")
xlabel("Energy(eV)")
ylabel("Density of Particle")
plot(E',f(2,:))
xgrid()
