import 'package:flutter/material.dart';

class Ejemplo01 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo boton Interactivo'),
        ),
        body: Center(
          child: ChangeTextButton(),
        ),
      ),
    );
  }

}

class ChangeTextButton extends StatefulWidget {

  @override
  _ChangeTextButtonState createState() => _ChangeTextButtonState();
  
}

class _ChangeTextButtonState extends State<ChangeTextButton> {

  bool esCambio = true;
  String textoDelBoton = "Hacer click";

  void _onPressedChangeText() {
    setState(() {
      textoDelBoton = esCambio ? "Se ha cambiado de texto!" : "Hacer click";
      esCambio = !esCambio;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textoDelBoton),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _onPressedChangeText, 
          child: 
            const Text('Pulsar'),
        ),
      ],
    );
  }
  
}