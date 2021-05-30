<<
  Asignatura:    Procesadores de Lenguajes

  Titulación:    Ingeniería Informática
  Especialidad:  Computación
  Curso:         Tercero
  Cuatrimestre:  Segundo

  Departamento:  Informática y Análisis Numérico
  Centro:        Escuela Politécnica Superior de Córdoba
  Universidad de Córdoba
 
  Curso académico: 2020 - 2021

  Fichero de ejemplo para el intérprete de pseudocódigo en español: ipe.exe
>>

@Ejemplo del uso del bucle CASOS

escribir_cadena('Introduzca un número:');
leer(dato);

casos (dato)
	valor 1:
		escribir_cadena('Número igual a 1\n');
	valor 2:
		escribir_cadena('Número igual a 2\n');
	defecto:
		escribir_cadena('Número distinto de 1 y 2\n');
fin_casos;

escribir_cadena('Introduzca \'hola\', \'adios\' u otra cadena:');
leer_cadena(dato);

casos (dato)
	valor 'hola':
		escribir_cadena('Cadena igual a \'hola\'\n');
	valor 'adios':
		escribir_cadena('Cadena igual a \'adios\'\n');
	defecto:
		escribir_cadena('Cadena distinta de \'hola\' y \'adios\'\n');
fin_casos;


dato:=falso;

casos (dato)
	valor verdadero:
		escribir_cadena('El booleano es verdadero\n');
	valor falso:
		escribir_cadena('El booleano es falso\n');
	defecto:
		escribir_cadena('Error\n');
fin_casos;