# Tema-2---Metode-Numerice-2017

	Nume: Mihalache Florin-Razvan
	Grupa: 313CC
	Timp de lucru: 8 ore
	
	
	Task 1
	In cadrul acestui task am initializat un vector P cu m+1 zerouri si apoi l-am construit urmand pasii din enunt: P(1) = 1, P(2) = d(1) - lambda si intr-un for am construit restul vectorului folosind relatia de recurenta din cerinta
	Task 2
	Aici se calculeaza numarul de valori proprii mai mici decat o valoare data. Intr-un for i = 1:n-1, verific alternanta de semne intre termenii succesivi din valorile polinomiale si daca o valoare P(i+1) e zero, incrementand numarul de valori proprii.
	Task 3
	Aici se calculeaza limita maxima si respectiv limita minima ale valorilor proprii ale matricei, eu construind 2 vectori (maximum si minimum) pe baza al altor 2 vectori (s, care e dat, si t, pe care il construiesc folosind formula din cerinta), iar la final extrag elementul maxim si pe cel minim din maximum, respectiv minimum.	
	Task 4
	Aici se calculeaza intervalele in care se afla valorile proprii calculate. Daca m - numarul de intervale - e mai mare decat numarul de elemente din diagonala atunci m = n. Vectorul in care se vor afla capetele intervalelor este r si il initializez cu m+2 zerouri. r(1) si r(m+2) le reinitializez cu valorile functiei de la taskul 3, apoi intr-un for m:-1:1 construiesc restul vectorului urmand pasii din cerinta temei. Dupa ce ies din for elimin r(m+2) din vector, acesta fiind un element doar de ajutor in obtinerea vectorului de lungime m+1.
	Task 5
	In acest task, am initializat vectorul vp cu m de zerouri si am luat vectorul r de la taskul 4, luand cate 2 elemente consecutive din vectorul r pentru a calcula valorile proprii folosind metoda bisectiei, pentru care am construit o functie auxiliara equation care reprezinta functia folosita in metoda bisectiei (aici fiind polinomul caracteristic).
	Task 6
	Aici am folosit metoda puterii inverse adaptata pentru o matrice tridiagonala simetrica. In acest caz, am folosit metoda Thomas pentru aflarea necunoscutei z din ecuatia (A-h*I_n) * z = y, A fiind matricea compusa din d si s, si pentru inmultirile y'*A*y si A*vecp am construit doua functii auxiliare numite lambda si multiplication.


