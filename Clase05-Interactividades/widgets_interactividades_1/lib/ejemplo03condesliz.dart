import 'package:flutter/material.dart';

class Ejemplo03ConDesliz extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PantallaPrincipal(),
    );
  }

}

class PantallaPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo Navegacion entre Pantallas'),
        ),
        body: PageView(
          children: [
            PrimeraPantalla(),
            SegundaPantalla(),
            TerceraPantalla(),
          ]
        ),
      ),
    );
  }

}

class PrimeraPantalla extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: const Center(
        child: Text(
            'Primera Pantalla',
            style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

}

class SegundaPantalla extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: const Center(
        child: Text(
            'Segunda Pantalla',
            style: TextStyle(fontSize: 24, color: Colors.yellow),
        ),
      ),
    );
  }

}

class TerceraPantalla extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: const Center(
        child: Text(
            'Tercera Pantalla',
            style: TextStyle(fontSize: 24, color: Colors.deepOrange),
        ),
      ),
    );
  }

}