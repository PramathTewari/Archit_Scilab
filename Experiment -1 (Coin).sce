//Plot the probability of various macrostate in coin-tossing Experoment(two -level system) versus number of heads 4,10 and 100 coins.
funcprot(0)
clc
clear
clf
n=input("Enter the Number of Coins Tossed : ")
t=2^n // t for Thermodynamic Probability
disp("Thermodynamic Probability(Total number of microstate) is : ",t)
for i=0:n                 // i for number of Head
    s(i+1)=factorial(n)/(factorial(i)*factorial(n-i))   //s means Microstate
    p(i+1)=s(i+1)/t                                   // p means Probability Getting Heads
    x(i+1)=i                                          // x means number of heads
end
disp("Number of Heads :",x)       
disp("Number of microstate(corresponding Macrostate) :",s) 
disp("Probability of Getting Heads : ",p)

plot(x,p,"b-*")       
title("Probability Getting Heads VS No. of Heads(Sonali(19151))")
xlabel("Numbers of Heads")
ylabel("Probability Getting Heads")
legend("Coin tossed = "+string(n))
xgrid(5,1,1)                      //xgrid(color,Thickness,style)
