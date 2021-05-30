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

@ Descripción: Ejemplo del bucle PARA

dato1:=0;
escribir_cadena('Introduzca un número: ');
leer(dato);
escribir dato;
k:=8;

para k
	desde 1
	hasta 10
	paso 1
	hacer
    dato +:= 1;
	dato1 +:= 2;
fin_para;

escribir dato;
escribir dato1;