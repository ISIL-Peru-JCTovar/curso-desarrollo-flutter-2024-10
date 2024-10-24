import 'package:flutter/material.dart';

class Ejemplo02 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo deslizar y actualizar'),
        ),
        body: Center(
          child: ListaRefrescable(),
        ),
      ),
    );
  }

}

class ListaRefrescable extends StatefulWidget {

  @override
  _ListaRefrescableState createState() => _ListaRefrescableState();
  
}

class _ListaRefrescableState extends State<ListaRefrescable> {

  List<String> items = [ 'Argentina', 'Peru', 'Brasil', 'Colombia' ];

  Future<void> _onRefreshCargarLista() async {

    //Simulacion de espera para demostrar el refresh
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      items.add('Nuevo Pais ${items.length + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: Colors.red,
      color: Colors.yellow,
      onRefresh: _onRefreshCargarLista,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
  
}