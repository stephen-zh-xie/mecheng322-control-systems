% Plotting Bode plots with straight-line approximations for the system
% Gp(s) = 1900 / s^2 + 13.8s + 41.6

% Setting up the system and bode plot
s = tf("s");
Gp = 1900 / (s^2 + 13.8*s + 41.6);
bode(Gp);

% Straight-line approximations added manually