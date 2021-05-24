@Ejemplo de condicional SI.

escribir_cadena('Introduce un dato numérico: \n');

leer(dato);

@Podemos comprobar que las mayúsculas no importan.

si(dato > 5) entonces
  	escribir_cadena('Tu número es mayor que 5\n');
 	escribir_cadena('Esta linea es adicional en el condicional.');
si_no
  	escribir_cadena('Tu número es menor o igual a 5\n');
	escribir_cadena('Esta linea es adicional en el condicional.');
fin_si