function numvp = NrValProprii(d, s, val_lambda)
  numvp = 0; % numarul de valori proprii
  P = ValoriPolinoame(d, s, val_lambda); % vectorul de valori de polinoame
  n = length(P); % lungimea lui P
  for i = 1 : n-1 % accesam P(i) si P(i+1) in acelasi timp
    if (((P(i) < 0) && (P(i+1) > 0)) || ((P(i) > 0) && (P(i+1) < 0))
       || (P(i+1) == 0))
    % daca P(i) si P(i+1) alterneaza ca semne (+/- sau -/+) sau daca P(i+1)
    % incrementam
      numvp++;
    endif
  endfor
endfunction