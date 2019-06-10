///// VARIABLES /////
a1=1
b1=2
U(1)=1
V(1)=2

T=100       // durée de la simulation
N=100000    // nombre de points voulus
dt=T/N     // pas

///// FONCTIONS & BOUCLES /////

for i=1:N
    U(i+1)=dt*(U(i)*(V(i)-a1))+U(i)
    V(i+1)=dt*(V(i)*(b1-U(i)))+V(i)
end

plot(U,V)

