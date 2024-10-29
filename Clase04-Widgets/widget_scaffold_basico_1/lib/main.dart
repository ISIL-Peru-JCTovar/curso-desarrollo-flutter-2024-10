

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp> {

  final TextEditingController _textController = TextEditingController();
  bool isChecked = false;
  String _seleccionGenero = 'Masculino';
  double _sliderValue = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ISIL - Ejemplo de Widgets Basicos'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Image(
                image: NetworkImage('https://www.brandemia.org/wp-content/uploads/2011/10/logo_isil_negativo.jpg'),
              ),
              const SizedBox(height: 20),

              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  labelText: 'Ingresa tu nombre',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text('Acepto los terminos y condiciones'),
                ]
              ),

              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text('Seleccione el genero: '),
              ),
              Row(
                children: [
                  Radio(
                    value: 'Masculino',
                    groupValue: _seleccionGenero,
                    onChanged: (String? value) {
                      setState(() {
                        _seleccionGenero = value!;
                      });
                    },
                  ),
                  const Text('Masculino'),
                  Radio(
                    value: 'Femenino',
                    groupValue: _seleccionGenero,
                    onChanged: (String? value) {
                      setState(() {
                        _seleccionGenero = value!;
                      });
                    },
                  ),
                  const Text('Femenino'),
                ]
              ),

              const SizedBox(height: 20),

              Text('Seleccione un valor: ${_sliderValue.toInt()}'),
              Slider(
                value: _sliderValue,
                min: 0,
                max: 100,
                divisions: 20,
                label: _sliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),

              const SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('Nombre: ${_textController.text}');
                  },
                  child: const Text('Enviar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}