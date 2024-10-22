void main() {
  
  //-- Uso de dynamic
  dynamic valor1 = 'Hola, gracias por estar en el curso de Flutter con Dart'; // Inicialmente es un String
  print(valor1);
  valor1 = true; // Ahora es un booleano (bool)
  if (valor1) print(valor1);
  valor1 = 18.69; // Ahora es un entero (int)
  print(valor1);
  
  //-- Uso de var
  var valor2 = 'Hola, gracias por estar en el curso de Flutter con Dart'; // Inicialmente es un String
  print(valor2);
  /*
  valor2 = true; // No es posible convertir luego a booleano (bool), porque ya es String
  if (valor2) print(valor2);
  valor2 = 18.69; // No es posible convertir luego a entero (int), porque ya es String
  print(valor2);
  */
  
  //-- Operadores Aritmeticos
  double suma = 5 + 4 * 6 - 6 / 3;  //27 por precedencia de operadores
  print(suma);
  int valorEntero = 34.95 ~/ 5;  //6 -- se limpia el decimal de 6.99
  print(valorEntero);
  int residuo = 17 % 3;  //2 es el residuo
  print(residuo);
  print(-residuo);

  //-- Operadores relacionales
  print(residuo == valorEntero);
  print(residuo > valorEntero);
  print(residuo < valorEntero);
  print(residuo >= valorEntero);
  print(residuo <= valorEntero);
  print(residuo != valorEntero);
  
}