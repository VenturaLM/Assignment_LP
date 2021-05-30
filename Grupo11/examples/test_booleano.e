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

@Ejemplo del uso de los booleanos

dato:=falso;

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