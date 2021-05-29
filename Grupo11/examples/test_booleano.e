@Ejemplo del uso de los booleanos

dato:=verdadero;

si (dato = verdadero)
	entonces
		escribir_cadena('Es verdadero\n');
	si_no
		si (dato = falso)
			entonces
				escribir_cadena('Es falso\n');
			si_no
				escribir_cadena('La variable no es un booleano\n');
		fin_si;
fin_si;