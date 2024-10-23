% A plot of the Probability of Fusion in the core of a Sun-like star.

scale = 14.25;
resol = scale + 3;

E = 0:10^-resol:10^-scale;  %Energy range

k = 1.380649*10^-23;

T = 16*10^6;

a = k.*T;     % a = k*T, where k = 1.380649*10^-23 (Joules per kelvin, Boltzmann constant)
% and T = 1.6*10^7 (Kelvins, core temp of a sun-like star)

b = 10^-6;     % b = 10^-6 for two protons

f1 = exp(-E./a)./((a).^(3/2));         % Energy Adjusted Maxwell-Boltzmann Distribution

f2 = exp(-b./sqrt(E));        % Probability of Quantum Tunnelling Distribution

f = f1.*f2;             % Probability of Fusion 


plot(E, f, LineWidth=1.5),
xlabel('Energy [Joules]'),
ylabel('Probability of Fusion'),
title('Gamow Peak'),
grid on