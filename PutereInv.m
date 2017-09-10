function [valp vecp] = PutereInv(d, s, h, y, maxIter, tol)
  n = length(d);
  iter = maxIter; % numarul de iteratii
  vecp = y; % initializam valorile vecp si valp
  valp = h;
  while (iter > 0)
    iter--;
    z = Thomas(s, d-valp, vecp); % aflam solutia ecuatiei (A-valp*I_n) * z = vecp
    vecp = z / norm(z); % normam
    valp = lambda(vecp, d, s); % aflam valoarea proprie
    if (norm(multiplication(vecp, d, s) - valp * vecp) < tol)
      break;
    endif
  endwhile
endfunction