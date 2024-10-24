import 'package:flutter/material.dart';

class Ejemplo03 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeraPantalla(),
    );
  }

}

class PrimeraPantalla extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo Navegacion entre Pantallas'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //bool loginExitoso = servicio.autenticar(username, clave);
              bool loginExitoso = true;
              if (loginExitoso) {
                //Navegar a la segunda pantalla
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaPantalla())
                );
              }
            },
            child: const Text('Ir a la segunda pantalla'),
          ),
        ),
      ),
    );
  }

}

class SegundaPantalla extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pantalla hija abierta (segunda pantalla)'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //Regresar a la primera pantalla
              Navigator.pop(context);
            },
            child: const Text('Regresar a la pantalla anterior'),
          ),
        ),
      ),
    );
  }



}
