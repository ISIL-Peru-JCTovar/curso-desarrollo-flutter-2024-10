//-- Funciones con parametros que retornan datos
int sumar(int a, int b) {
  return a + b;
}

//-- Funciones con parametros sin retorno (void)
void saludar(String nombre, int edad) {
  print('Hola, $nombre. Tienes $edad a�os.');
}

//-- Funciones con parametros opcionales [int? edad]
void saludarOpcional(String nombre, [int? edad]) {
  if (edad != null) {
    print('Hola, $nombre. Tienes $edad a�os.');
  } else {
    print('Hola, $nombre.');
  }
}

//-- Funciones con parametros con valores predeterminados
void saludarPredeterminado(String nombre, [int edad = 38]) {
  print('Hola, $nombre. Tienes $edad a�os.');
}

void main() {
  int resultado = sumar(3, 5);
  print(resultado); // 8
  saludar('Carlos', 25); // Hola, Carlos. Tienes 25 a�os.
  saludarOpcional('Luis'); // Hola, Luis.
  saludarOpcional('Luis', 30); // Hola, Luis. Tienes 30 a�os.
  saludarOpcional('Reynaldo'); // Hola, Reynaldo. Tienes 38 a�os.
}