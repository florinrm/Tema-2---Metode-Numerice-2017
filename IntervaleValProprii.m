function r = IntervaleValProprii(d, s, m)
  n = length(d); % lungimea lui d
  if (m > n) % daca m e mai mare decat n, m = n
    m = n;
  endif
  r = zeros(1, m + 2); % initializam vectorul r cu 0
  [r(1), r(m + 2)] = LimiteValProprii(d, s); % obtinem r(1) si r(m+2) pe care ii
  % vom folosi pentru determinarea intervalelor
  for k = m : -1 : 1
    mij = (r(k + 2) + r(1)) / 2; % mijlocul intervalului
    h = r(k + 2) - mij; % distanta dintre capete
    numvp = NrValProprii(d, s, mij); % numarul de valori proprii
    h = h / 2; % se injumatateste distanta
    if (numvp < k) % daca numarul de valori proprii e mai mic decat indicele de
    % pozitie, atunci la mijloc se aduna distanta, altfel se scade distanta dintre
    % mijloc
      mij = mij + h;
    elseif (numvp > k)
      mij = mij - h;
    endif  
    while (numvp != k) % atata timp cat numvp e diferit de k se repeta procedura
    % de mai sus
      numvp = NrValProprii(d, s, mij);
      h = h / 2;
      if (numvp < k)
        mij = mij + h;
      elseif (numvp > k)
        mij = mij - h;
      endif  
    endwhile
    r(k + 1) = mij; % atribuirea valorii lui r(k+1)
  endfor
  r = r(1 : m+1); % se taie ultimul element r(m+2), el fiind redundant
endfunction