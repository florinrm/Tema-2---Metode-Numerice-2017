function [limita_inf, limita_sup] = LimiteValProprii(d, s)
  limita_inf = limita_sup = 0; % initializam limitele
  n = length(d);
  maximum = minimum = t = zeros(1, n); % initializam vectorii
  t(1) = abs(s(1)); % construirea vectorului t folosit pentru a afla limitele
  t(n) = abs(s(n - 1));
  for i = 2 : n-1
    t(i) = abs(s(i)) + abs(s(i - 1));
  endfor
  for i = 1:n % construirea vectorilor pentru a afla limitele de valori proprii
  % prin insumarea  / scaderea fiecarui element din d si t
    maximum(i) = d(i) + t(i); % vector de maxim
    minimum(i) = d(i) - t(i); % vector de minim
  endfor
  limita_inf = min(minimum); % limita inferioara
  limita_sup = max(maximum); % limita superioara
endfunction