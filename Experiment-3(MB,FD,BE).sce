clc
 clf
 clear
 funcprot (0)
 //Defining contstants
 K=1.38e-23
 u=0
 e=1.6e-19
 //Defining range of energy
 E=-0.5:0.001:0.5
 E1=0:0.001:1
 //Defining range of temperature
 T=200:200:600
 a=-1:1:1
 for i=1:length(E)
     for j=1:length(T)
         f(i,j)=(1)/((exp((((E1(i)-u)*e))/(K*T(j))))+a(2)) //Maxwell Boltzmann
         f1(i,j)=(1)/((exp((((E(i)-u)*e))/(K*T(j))))+a(3)) //Fermi-Dirac 
         f2(i,j)=(1)/((exp((((E1(i)-u)*e))/(K*T(j))))+a(1)) //Bose Enstein
 end
end
subplot(2,2,1)
plot(E1,f(:,1),"r")
plot(E1,f(:,2),"b")
plot(E1,f(:,3),"g")
title("Maxwell Boltzmann(sonali(19151))")
xlabel("Energy(eV)")
ylabel("Distribution function ")
legend('Temp=200k','Temp=400k','Temp=600k')
xgrid()          //xgrid(color,Thickness,style)
subplot(2,2,2)
plot(E,f1(:,1),"r")
plot(E,f1(:,2),"g")
plot(E,f1(:,3),"b")
title("Fermi-dirac")
xlabel("Energy(eV)")
ylabel("Distribution function ")
legend('Temp=200k','Temp=400k','Temp=600k')
xgrid()          //xgrid(color,Thickness,style)

subplot(2,2,3)
plot(E1,f2(:,1),"r")
plot(E1,f2(:,2),"g")
plot(E1,f2(:,3),"b")
title("Bose-Einstein")
xlabel("Energy(eV)")
ylabel("Distribution function ")
legend('Temp=200k','Temp=400k','Temp=600k')
xgrid()          //xgrid(color,Thickness,style)
subplot(2,2,4)
plot(E1,f(:,1),"r")
plot(E,f1(:,1),"b")
plot(E1,f2(:,1),"g")
title("Bose-Einstein")
xlabel("Energy(eV)")
ylabel("Distribution function ")
legend('Bose-Einstein','Maxwell-Boltzmann','Fermi-Dirac')
xgrid()          //xgrid(color,Thickness,style)
