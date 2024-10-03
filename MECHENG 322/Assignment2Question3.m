% Simulating and designning PI controller for system
% Gc2(s)Gp2(s) / (1 + Gc2(s)Gp2(s)) where Gc2(s) = PI Controller and
% Gp2(s) = 45.673 / s(s/4.45 + 1)(s/9.35 + 1)
s = tf("s");
Gp2 = 45.673 / (s * (s/4.45 + 1) * (s/9.35 + 1));
Gc2 = 0.181 + (0.022 / s); % from Ziegler-Nichols
Cltf = (Gc2 * Gp2) / (1 + Gc2 * Gp2);

% Test with step input
step(90 * Cltf);
stepinfo(90 * Cltf)