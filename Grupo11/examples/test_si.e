@Ejemplo del uso del condicional SI

dato:=4;

si (dato > 5)
	entonces
		dato+:=10;
		escribir_cadena('Estamos dentro del entonces');
		escribir(dato);
	si_no
		dato-:=10;
		escribir_cadena('Estamos dentro del si_no');
		escribir(dato);
fin_si;