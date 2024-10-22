void main() {
  
  var nombre = 'Adriel';
  var edad = 24;
  String apellidos = 'Gonzales Martell';
  
  final String pais = 'Peru';
  late final int pronosticosGoles;
  
  String numGolesAcumulados = '25';
  //int numGolesNumero = int.parse(numGolesAcumulados);
  int? numGolesNumero = int.tryParse(numGolesAcumulados);
  
  const double igv = 0.18;
  
  print('Numero de goles acumulados mas 3: ${ (numGolesNumero ?? 0) + 3 }');
  
  print('Hola, bienvenido $nombre, tu edad es: $edad y dentro de 5 años tendras ($edad + 5)');  //Incorrecto
  //print('Hola, bienvenido $nombre, tu edad es: $edad y dentro de 5 años tendras $(edad + 5)');  //Incorrecto, ni siquiera compila
  print('Hola, bienvenido $nombre, tu edad es: $edad y dentro de 5 años tendras ${ edad + 5 }');
  print('Tu nombre en mayusculas es: ${ nombre.toUpperCase() }');
  print('Tus apellidos son: $apellidos');
  
  apellidos = 'Custodio Soto';
  print('Tus apellidos son: $apellidos');
  
  print('Estamos en: $pais');
  
  //pais = 'Chile';   //-- No se puede porque es una variable final
  
  //-- El pronostico de goles que vamos a ganar contra Chile es
  pronosticosGoles = 6;
  print('El pronostico de goles que vamos a ganar contra Chile es: $pronosticosGoles');
  
  print('El valor de las entradas para el partido de Peru Chile es: ${ 300*(1 + igv) }');
    
}