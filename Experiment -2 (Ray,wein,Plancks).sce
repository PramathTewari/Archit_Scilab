//Plot Planck's law of Black body radiation w.r.t Wavelength at different temperatures.Compute it with Rayleigh-jeans Law and wien's distribution Law of a given temperature.  
funcprot(0)
clc
clear
clf
h=6.626e-34  // joule/second
k=1.38e-23 //Joule/kelvin 
c=3e8  //m/s
r=1.2e-6:0.01e-6:3e-6 
r1=0.1e-6:0.01e-6:3e-6
t=[5000,7000,9000]  //Temp.(Kelvin)
for i=1:length(r)
    for j=1:length(t)
    E(i,j)=(8*%pi*k*t(j))/(r(i)^4)
end
end
xname("Amit Chaudhary(19114)")
subplot(2,2,1)
plot(r',E(:,1),'b')
plot(r',E(:,2),'g')
plot(r',E(:,3),'r')
title("Rayleigh-jeans Law ")
xlabel("Wavelength ----->")
ylabel("Energy ----->")
legend("T=5000 kelvin","T=7000 kelvin","T=9000 kelvin")
xgrid(5,1,7)
//Weins

t=[5000,7000,9000]  //Temp.(Kelvin)
for i=1:length(r1)
     for j=1:length(t)
    E1(i,j)=(8*%pi*h*c)/((r1(i)^5)*(exp((h*c)/(r1(i)*k*t(j)))))
  end
end
subplot(2,2,2)
plot(r1',E1(:,1),'b')
plot(r1',E1(:,2),'g')
plot(r1',E1(:,3),'r')
title("Weins Law")
xlabel("Wavelength ----->")
ylabel("Energy ----->")
legend("T=5000 kelvin","T=7000 kelvin","T=9000 kelvin")
xgrid(5,1,7)
//plancks radiation law 

t=[5000,7000,9000]  //Temp.(Kelvin)
for i=1:length(r1)
     for j=1:length(t)
    E2(i,j)=(8*%pi*h*c)/((r1(i)^5)*((exp((h*c)/(r1(i)*k*t(j)))-1)))
    end
end
subplot(2,2,3)
plot(r1',E2(:,1),'b')
plot(r1',E2(:,2),'g')
plot(r1',E2(:,3),'r')
title("Plancks Law")
xlabel("Wavelength ----->")
ylabel("Energy ----->")
legend("T=5000 kelvin","T=7000 kelvin","T=9000 kelvin")
xgrid(5,1,7)
//ALL three in one graph(At temp. =7000 kelvin)
subplot(2,2,4)
plot(r',E(:,1),'r')
plot(r1',E1(:,1),'b')
plot(r1',E2(:,1),'g')
title("Comparsion b/w Rayleigh-jeans,Weins and plancks Law")
xlabel("Wavelength ----->")
ylabel("Energy ----->")
legend("Rayleigh-jeans Curve","Weins curve ","plancks curve")
xgrid(5,1,7)
