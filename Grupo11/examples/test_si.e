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

@ Descripción: Ejemplo del uso del condicional SI

dato:=6;

si (dato > 5)
	entonces
		dato+:=10;
		escribir_cadena('Estamos dentro del entonces \n');
		escribir(dato);
	si_no
		dato-:=10;
		escribir_cadena('Estamos dentro del si_no \n');
		escribir(dato);
fin_si;