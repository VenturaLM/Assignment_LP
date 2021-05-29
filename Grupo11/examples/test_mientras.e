@Ejemplo del uso del bucle MIENTRAS

dato1:=0;
escribir_cadena('Introduzca un número:\n');
leer(dato2);
k:=8;

mientras (dato2 < 4) hacer
	dato2 := dato2 + 1;
	dato1 := dato2 + 2;
fin_mientras;

escribir (dato1);
escribir (dato2);
