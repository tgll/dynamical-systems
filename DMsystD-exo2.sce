///// VARIABLES /////
lam=0.26
bet=0.1
gam=1
a=0.13
b=0.013
U(1)=0.2
W(1)=1.5

T=100       // durée de la simulation
N=100000    // nombre de points voulus
dt=T/N     // pas

///// FONCTIONS & BOUCLES /////

for i=1:N
    V(i+1)=dt*lam*V(i)*((V(i))-a)*(1-(V(i)))-bet*(W(i))+V(i)
    W(i+1)=dt*b*((V(i))-gam*(W(i)))+(W(i))
end

plot(U,V)
