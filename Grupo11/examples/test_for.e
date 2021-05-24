<<<<<<< HEAD:Grupo11/examples/test3.e
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
=======
dato1:=0;
leer(dato);
escribir dato;
k:=8;

para k
	desde 1
	hasta 10
	paso 1
	hacer
    dato := dato + 1;
	dato1 := dato + 2;
fin_para

escribir dato;
escribir dato1;
>>>>>>> 28dfb293942d375496fc285fa49501a243b0bd95:Grupo11/examples/test_for.e
