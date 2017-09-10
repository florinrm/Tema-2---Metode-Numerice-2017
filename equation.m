function y = equation (d, s, x) % polinomul caracteristic
  n = length(d);
  P = zeros(1, n + 1);
  % construirea polinomului caracteristic in jului lui x
  P(1) = 1;
  P(2) = d(1) - x;
  for i = 2 : n
    P(i + 1) = (d(i) - x) * P(i) - s(i - 1)^2 * P(i - 1);
  endfor
  y = P(n + 1); % polinomul caracteristic
endfunction