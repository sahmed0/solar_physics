% A plot of the Probability of Tunelling through the Coulomb Barrier
% for protons in a sunlike star.



E = 0:10^-15:10^-10;  %Energy range

b = 10^-6;     % b = 10^-6 for two protons

f = exp(-b./sqrt(E));        % Probability Distribution

plot(E, f, LineWidth=1.5),
xlabel('Energy [Joules]'),
ylabel('Probability of Tunnelling'),
title('Probability of protons tunelling through Coulomb Barrier'),
grid on