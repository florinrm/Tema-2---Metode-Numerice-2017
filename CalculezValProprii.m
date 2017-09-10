function vp = CalculezValProprii(d, s, m, tol)
  n = length(d); % lungimea lui d
  if (m > n) % daca m e mai mare decat n, m = n
    m = n;
  endif
  vp = zeros(1, m); % initializam cu zero vectorul de valorii proprii
  r = IntervaleValProprii(d, s, m); % intervalele in care se afla
  % valorile proprii
  for i = 1 : m % aplicam metoda bisectiei intre r(i) si r(i+1), i = 1:m, acestea
  % fiind capetele intervalului de cautare al valorii proprii, folosind ca
  % functie polinomul caracteristic
    n = 0; % numarul de iteratii
    while (((r(i + 1) - r(i)) / (2^(n - 3))) > tol) % toleranta pentru aproximarea
    % solutiei cautate
      vp(i) = (r(i) + r(i + 1)) / 2; % mijlocul intervalului
      if (equation(d, s, r(i)) * equation(d, s, vp(i)) < 0)
      % cautarea solutiei in intervalul in care cautam
        r(i + 1) = vp(i);
      elseif (equation(d, s, r(i + 1)) * equation(d, s, vp(i)) < 0)
        r(i) = vp(i);
      endif
      n++;
    endwhile
  endfor
endfunction