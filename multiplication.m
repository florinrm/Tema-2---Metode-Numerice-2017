function k = multiplication (y, d, s) % multiplicarea de tip A * y
  % A fiind matricea tridiagonala simetrica cu d si s
  n = length(d);
  k = zeros(1, n); % rezultatul produsului A * y
  k(1) = y(1) * d(1) + y(2) * s(1); % compunem primul element, care nu respecta
  % regula din for
  for i = 2 : n-1
    k(i) = y(i - 1) * s(i - 1) + y(i) * d(i) + y(i + 1) * s(i);
  endfor
  k(n) = y(n - 1) * s(n - 1) + y(n) * d(n); % compunem ultimul element, care nu
  % respecta regula din for
endfunction