@Ejemplo del uso del bucle REPETIR

escribir_cadena('Introduzca un número:\n');
leer(dato);

repetir
	dato := dato + 1;
	escribir(dato);
hasta(dato = 10);
