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

@ Descripción: Ejemplo de operadores relacionales

@Operando sobre cadenas

escribir_cadena('Introduce la primera cadena: \n');
leer_cadena(n1);

escribir_cadena('Introduce la segunda cadena: \n');
leer_cadena(n2);

escribir_cadena('Cadena n1: ');
escribir_cadena(n1);
escribir_cadena('\n');

escribir_cadena('Cadena n2: ');
escribir_cadena(n2);
escribir_cadena('\n');

si(n1 < n2) entonces
escribir_cadena('Success: n1 < n2 \n');
fin_si;

si(n1 > n2) entonces
escribir_cadena('Success: n1 > n2 \n');
fin_si;

si(n1 <= n2) entonces
escribir_cadena('Success: n1 <= n2 \n');
fin_si;

si(n1 >= n2) entonces
escribir_cadena('Success: n1 >= n2 \n');
fin_si;

si(n1 = n2) entonces
escribir_cadena('Success: n1 = n2 \n');
fin_si;

si(n1 <> n2) entonces
escribir_cadena('Success: n1 <> n2 \n');
fin_si;