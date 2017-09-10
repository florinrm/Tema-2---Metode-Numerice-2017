function x = Thomas(a, b, d)
	n = length(d);
  c = a; % copierea primei diagonale in a treia diagonala
  % a (la fel si c) reprezinta supradiagonala
	c(1) = c(1) / b(1); 
	d(1) = d(1) / b(1);   
	for i = 2 : n-1 % modificarea vectorilor c si d
		value = b(i) - a(i - 1) * c(i - 1);
		c(i) = c(i) / value;
		d(i) = (d(i) - a(i - 1) * d(i - 1)) / value;
	endfor
	d(n) = (d(n) - a(n - 1) * d(n - 1)) / (b(n) - a(n - 1) * c(n - 1)); % modificarea lui d(n)
	x(n) = d(n); % alcatuim solutia x
	for i = n-1 : -1 : 1 % continuam construirea solutiei x
		x(i) = d(i) - c(i) * x(i + 1);
	endfor
endfunction