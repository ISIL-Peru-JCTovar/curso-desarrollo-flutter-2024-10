import 'package:flutter/material.dart';

class Ejemplo03Animado extends StatelessWidget {
  
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
              //Navegar a la segunda pantalla
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => SegundaPantalla(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    var inicio = Offset(1.0, 0.0);
                    var fin = Offset.zero;
                    var tween = Tween(begin: inicio, end: fin)
                                    .chain(CurveTween(curve: Curves.easeInOut));
                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child
                    );
                  }
                ),
              );
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
