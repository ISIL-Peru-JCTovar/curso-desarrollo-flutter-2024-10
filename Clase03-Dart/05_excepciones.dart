void main() {

  try {
    int resultado = 10 ~/ 0;
    print(resultado);
  } on UnsupportedError {
    print('Error: División por cero no permitida.');
  } catch (e, s) {
    print('Error: $e');
    print('Stack trace: $s');
  }

  try {
    int resultado = dividir(10, 0);
    print(resultado);
    leerArchivo('data.txt');
  } catch (e) {
    print('Manejo del error en main: $e');
    rethrow; // Relanza la excepción para ser manejada en un nivel superior
  }

}

int dividir(int a, int b) {
  if (b == 0) {
    throw UnsupportedError();
  }
  return a ~/ b;
}

void leerArchivo(String nombre) {
  var file;
  try {
    file = openFile(nombre);
    // Operaciones con el archivo
  } catch (e) {
    print('Error al manejar el archivo: $e');
  } finally {
    if (file != null) {
      file.close();
    }
  }
}