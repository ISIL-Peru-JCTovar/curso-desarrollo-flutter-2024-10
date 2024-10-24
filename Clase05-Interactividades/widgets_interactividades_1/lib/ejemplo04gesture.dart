import 'package:flutter/material.dart';

class Ejemplo04Gesture extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EjemploGestureConSwipe(),
    );
  }

}

class EjemploGestureConSwipe extends StatefulWidget {

  @override
  _EjemploGestureConSwipeState createState() => _EjemploGestureConSwipeState();

}

class _EjemploGestureConSwipeState extends State<EjemploGestureConSwipe> {

  String _direccionSwipe = "Deslizar a la izquierda o derecha";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo de GestureDetector'),
        ),
        body: Center(
          child: GestureDetector(
            onHorizontalDragEnd: (details) {
              setState(() {
                if (details.primaryVelocity! > 0) {
                  _direccionSwipe = "Deslizado hacia la derecha";
                } else if (details.primaryVelocity! < 0) {
                  _direccionSwipe = "Deslizado hacia la izquierda";
                }
              });
            },
            onTap:  () {
              setState(() {
                showDialog(
                  context: context, 
                  builder: (context) {
                    return const AlertDialog(
                      title: Text('Ejemplo de Popup Dialog'),
                      content: Text('Esto es una prueba'),
                    );
                  });
              });
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blue,
              child: Text(
                _direccionSwipe,
                style: TextStyle(fontSize: 24, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

}