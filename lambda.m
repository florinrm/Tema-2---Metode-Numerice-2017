function x = lambda (y, d, s) % aflarea lui lambda prin inmultirea y*A*y'
  % insa folosind vectorii d si s
  n = length(d);
  k = zeros(1, n); % k reprezinta un vector 1xn ce reprezinta y*A
  k(1) = y(1) * d(1) + y(2) * s(1); % compunem primul element, care nu respecta
  % regula din for
  for i = 2 : n-1 % construirea vectorului k
    k(i) = y(i - 1) * s(i - 1) + y(i) * d(i) + y(i + 1) * s(i);
  endfor
  k(n) = y(n - 1) * s(n - 1) + y(n) * d(n); % compunem ultimul element, care nu
  % respecta regula din for
  x = k * y'; % in functie y e vector linie, caci in mod normal ar fi fost y'
endfunction