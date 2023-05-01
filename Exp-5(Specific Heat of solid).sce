funcprot(0)
clc
clf
clear
k=1.38e-23
N=6e23
Name=input("Enter the name of the solid : ","string")
Te=input("Enter the Einstein Temperature in kelvin : ")
Td=input("Enter the Debye Temperature in kelvin : ")
T=0:2*Td       //Temperature range in kelvin
for i=1:length(T)
    cvdp(i)=3*N*k  //Dulong petit's law
    if T(i)==0 then
        cve(i)=0
        cvd(i)=0
    else
        x=(Te/T(i))
        cve(i)=((3*N*k*(x^2)*exp(x))/((exp(x)-1)^2))    //Einstein Model
        if T(i)>Td/50
        I=integrate('((y^4)*exp(y))/((exp(y)-1)^2)','y',0,Td/T(i))
        cvd(i)=(9*N*I*k*((T(i)/Td)^3))  //Debye Model
else
    cvd(i)=1/5*(12*((3.14)^4)*N*k*((T(i)/Td)^3))
    end
end
end
plot(T',cvdp,'r')
plot(T',cve,'b')
plot(T',cvd,'g')
title("Specific Heat for : "+string(Name))
xlabel("Temperature(in Kelvin)") 
ylabel("Specific Heat (J/(mol-k)")
legend("Dulong Petit Law","Einstein Law","Debye Model")
xgrid()
