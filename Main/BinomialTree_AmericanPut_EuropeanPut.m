clc; 
close all;
clear all;
format long;

S = input('Enter stock price S=');
X = input('Enter strike price X=');
sigma = input('Enter annual sigmaility sigma=');
t = input('Enter maturity t=');
n = input('Enter number of periods (multiple of 4) n=');
q = input('Enter coninuous annualized dividend yield d=');
r = input('Enter interest rate r=');
 
deltaT = t/n;
u = exp(sigma*sqrt(deltaT));
d = 1/u;
R = exp(r*deltaT);
p = (exp((r-q)*deltaT)-d)/(u-d);

European = zeros(1,n+1);
American = zeros(1,n+1);

for i = 0 : n 
    European(i+1) = max(X - S*u^(n-i)*(d^i), 0);
end
for j = n-1 : -1 : 0
    for i = 0 : j
        European(i+1) = max((p*European(i+1)+(1-p)*European(i+2))/R,0);
    end
end

for i = 0 : n 
    American(i+1) = max(X - S*u^(n-i)*(d^i), 0);
end
for j = n-1 : -1 : 0
    for i = 0 : j
        if j>=(3/4*n)
            American(i+1) = max((p*American(i+1)+(1-p)*American(i+2))/R,X - S*u^(j-i)*(d^i));
        else
            American(i+1) = max((p*American(i+1)+(1-p)*American(i+2))/R,0);
        end
    end
end
disp('-------------------------')
disp('The European put value is')
European(1) 
disp('The American put value is')
American(1) 
disp('-------------------------')
  