void main() {
  
  //-- List, Map, Set
  
  //-- List
  var listaAlumnos = [ 'Adriel', 'Reynaldo', 'Andre', 'Karla', 'Adriel' ];
  listaAlumnos.add('Calistro');
  
  //-- Set
  Set<String> listaAlumnosLimpia = { 'Adriel', 'Reynaldo', 'Andre', 'Karla' };
  listaAlumnosLimpia.addAll({ 'Adriel', 'Karla' });
  
  //-- Map key: value utilizando Objetos
  Map<String, Alumno> notasAlumnos = {
    'Adriel': new Alumno('Adriel', 'Gonzales', 24, 19),
    'Reynaldo': new Alumno('Reynaldo', 'Gonzales', 25, 20),
    'Andre': new Alumno('Andre', 'Gonzales', 26, 19.5),
    //'Karla': new Alumno('Karla', 'Gonzales', 27, 20),
    'Calistro': new Alumno('Calistro', 'Gonzales', 28, 18.5)
  };
  
  //-- Map key: value utilizando Record sin clave/valor
  Map<String, Record> notasAlumnosRecord1 = {
    'Adriel': ( 'Adriel', 'Gonzales', 24, 19),
    'Reynaldo': ( 'Reynaldo', 'Gonzales', 25, 20),
    'Andre': ( 'Andre', 'Gonzales', 26, 19.5),
    //'Karla': ( 'Karla', 'Gonzales', 27, 20),
    'Calistro': ( 'Calistro', 'Gonzales', 28, 18.5)
  };
  
  Map<String, Record> notasAlumnosRecord2 = {
    'Adriel': ( nombres: 'Adriel', apellidos: 'Gonzales', edad: 24, notaFinal: 19),
    'Reynaldo': ( nombres: 'Reynaldo', apellidos: 'Gonzales', edad: 25, notaFinal: 20),
    'Andre': ( nombres: 'Andre', apellidos: 'Gonzales', edad: 26, notaFinal: 19.5),
    //'Karla': ( nombres: 'Karla', apellidos: 'Gonzales', edad: 27, 20),
    'Calistro': ( nombres: 'Calistro', apellidos: 'Gonzales', edad: 28, notaFinal: 18.5)
  };
  
  var listaAlumnosInvertida = listaAlumnos.reversed;
  
  //-- Bucle clasico
  for (int indice = 0; indice < listaAlumnos.length; indice++) {
    String alumno = listaAlumnos[indice];
    print('Alumno(a): $alumno y su nota es: ${ notasAlumnos[alumno]?.notaFinal }');
  }
  
  print('---------------------------------------------------');
  listaAlumnos.remove('Andre');
  
  //-- Bucle de coleccion - Por revisar
  /*
  for (var alumno in listaAlumnosLimpia) {
    var registroAlumno = notasAlumnosRecord2[alumno];
    print('Alumno(a): $alumno y su nota es: ${ registroAlumno?.$notaFinal }');
  }
  */
  
  //-- Bucle abreviado - forEach
  listaAlumnosInvertida.forEach((alumno) => print(alumno));
    
}

class Alumno {
  
  String nombres = '';
  String apellidos = '';
  int edad = 0;
  double notaFinal = 0;
  
  Alumno(String nom, String ape, int ed, double notaF) {
    nombres = nom;
    apellidos = ape;
    edad = ed;
    notaFinal = notaF;
  }
  
}