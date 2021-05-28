@Ejemplo del uso de los booleanos

valor:=verdadero;

si (valor = verdadero)
	entonces
		escribir_cadena('Es verdadero');
	si_no
		si (valor = falso)
			entonces
				escribir_cadena('Es falso');
		fin_si;
	si_no
		escribir_cadena('La variable no es un booleano');
fin_si;