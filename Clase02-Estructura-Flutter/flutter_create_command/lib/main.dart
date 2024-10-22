import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ISIL Ejemplo Flutter Sesion 02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  } 

}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  // Lista para guardar los elementos
  List<String> items = [];

  //Controlador de TextField
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ISIL - Listado de Elementos'),
      ),
      body: Column(
        children: [
          //TextField para ingresar un elemento nuevo
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Agregar nuevo elemento',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          //Boton para agregar el elemento
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (_textController.text.isNotEmpty) {
                  items.add(_textController.text);
                  _textController.clear();
                }
              });
            },
            child: Text('Add'),
          ),
          //ListView para ver todos los elementos
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]),
                );
              },
            )
          )
        ],
      )
    );
  } 

}