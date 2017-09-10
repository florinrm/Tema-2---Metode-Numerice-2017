function P = ValoriPolinoame(d, s, val_lambda)
  n = length(d); % lungimea lui d
  P = zeros(1, n + 1); % initializam P cu n+1 de zerouri, n+1 fiind lungimea lui P
  P(1) = 1; % primul element
  P(2) = d(1) - val_lambda; % al doilea element
  for i = 2 : n % construm P(3:n+1) cu ajutorul relatiei de recurenta
    P(i + 1) = (d(i) - val_lambda) * P(i) - s(i - 1)^2 * P(i - 1);
  endfor
endfunction