% Presenting and simplifying transfer function
% Gc(s)Gp(s) / (1 + Gc(s)Gp(s)H(s))
% where Gp(s) = 45.673 / (s/4.45 + 1)(s/9.35 + 1)
% and H(s) = 1 / (0.05s + 1)
% and Gc(s) is the PI controller
s = tf("s");
Gc = 0.1;
Gp = 45.673 / (((s / 4.45) + 1) * ((s / 9.35) + 1));
H = 1 / (0.05 * s + 1);

Cltf = (Gc * Gp) / (1 + (Gc * Gp * H));
Cltf_simplified = minreal(Cltf);

% Part b: Using a step input of Wref = 100rad/s

step(100 * Cltf_simplified);
step_input_data = stepinfo(100 * Cltf_simplified);

% Part c: Programming the PI controller
Gc = 0.5 + (0.5 * s);
Cltf = (Gc * Gp) / (1 + (Gc * Gp * H));
step(100 * Cltf);
