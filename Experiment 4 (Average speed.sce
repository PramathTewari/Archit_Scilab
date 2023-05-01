funcprot(0)
clc
clf

//Defining constants
K=1.38e-23    //BoltzMann constant
N=6.022e+23   //Avogadro Number 
//Taking inputs
Name=input("Enter The Name of First gas : ","string");
M=input("Enter Molar Mass(g/mol) of "+string(Name)+": ");
m=(M/(N*1000))

T=200:200:600       //Temp. in kelvin 
V=0:10:2500        //speed range (in m/s)
disp("Temp(k) Vmp     Vav      Vrms  ")
for i=1:length(T)  
A(i)=(m/(2*K*T(i)))
end
//Defining maxwell speed distribution 
for i=1:length(A)
    for j=1:length(V)
f(i,j)=(4*%pi*((A(i)/%pi)^(3/2))*(V(j)^2)*exp(-A(i)*(V(j)^2)))     // Maxwell Distribution function


end
[p,q]=max(f(i,:))
vmp=V(q)
vav=sqrt(4/%pi)*vmp
vrms=sqrt(3/2)*vmp
disp([ T(i) vmp vav vrms])
end


//Plotting For Gas 1
scf(0)
plot(V',f')
title("Maxwell Speed Distribution For Gas : "+string(Name))
xlabel("Velocity")
ylabel("Velocity distribution")
legend('T=200','T=400','T=600')
xgrid(5,1,1)



















