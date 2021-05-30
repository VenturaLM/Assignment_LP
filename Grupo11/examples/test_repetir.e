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

@ Descripción: Ejemplo del uso del bucle REPETIR

escribir_cadena('Introduzca un número: ');
leer(dato);

repetir
	dato := dato + 1;
	escribir(dato);
hasta(dato = 10);