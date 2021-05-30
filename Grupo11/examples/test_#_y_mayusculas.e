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

@Ejemplo del uso de las palabras reservadas y las variables indiferentes a mayúsculas y minúsculas

Dato:=10 #mod 5;
escribir(dAto);

daTo:=10 #div 5;
escribir(datO);

si ((DAto < 100) #y (daTO > 1))
	entonces
		escribir_cadena('Primero \n');
	si_no
		si ((DATO < 100) #y #no (DaTo > 1))
			entonces
				escribir_cadena('Segundo \n');
			si_no
				si ((dAtO < 100) #o (dATO > 1))
					entonces
						escribir_cadena('Tercero \n');
					fin_si;
		fin_si;
fin_si;

#borrar;
#lugar(3,5);