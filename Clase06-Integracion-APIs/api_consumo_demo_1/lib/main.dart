import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const ConsumirEjemploFakeAPI());
}

class ConsumirEjemploFakeAPI extends StatelessWidget {

  const ConsumirEjemploFakeAPI({Key? clave}) : super(key: clave);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeria de Fotos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaGaleriaFotos(),
    );
  }

}

class PantallaGaleriaFotos extends StatefulWidget { 

  const PantallaGaleriaFotos({Key? clave}) : super(key: clave);

  @override
  _PantallaGaleriaFotosState createState() => _PantallaGaleriaFotosState();

}

class _PantallaGaleriaFotosState extends State<PantallaGaleriaFotos> {

  final List<int> idsDeFotos = [ 2, 3, 4, 5, 6 ];
  List<dynamic> photos = [];
  bool estaCargando = false;

  @override
  void initState() {
    super.initState();
    cargarData();
  }

  Future<void> cargarData() async {

    List<dynamic> fotosDeApi = [];

    setState(() {
      estaCargando = true;
    });

    for (int id in idsDeFotos) {
      final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$id'));
      if (response.statusCode == 200) {   //HTTP Status OK
        var data = response.body;
        var objJson = jsonDecode(data);
        fotosDeApi.add(objJson);
      }
    }
    
    setState(() {
      photos = fotosDeApi;
      estaCargando = false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ISIL - Galeria de Fotos'),
      ),
      body: estaCargando
      ? const Center(
        child: CircularProgressIndicator(),
      ) :
      Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await cargarData();
            },
            child: const Text('Refrescar'),
          ),
          Expanded(
            child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: photos.length,
                      itemBuilder: (context, index) {
                        final photo = photos[index];
                        return Card(
                          child: Column(
                            children: [
                              Image.network(
                                photo['thumbnailUrl'],
                                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) {
                                    // Si loadingProgress es null, significa que la imagen ya terminó de cargarse.
                                    return child;
                                  } else {
                                    // Mientras la imagen se carga, muestra un indicador de progreso.
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress.expectedTotalBytes != null
                                            ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                            : null,
                                      ),
                                    );
                                  }
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.network(
                                            'https://i0.wp.com/viajarparavivir.com/wp-content/uploads/2017/02/Logo-ISIL.png',
                                            fit: BoxFit.cover,
                                            height: 100,
                                            width: 100
                                          );
                                },
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  photo['title'],
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ]
                          ),
                        );
                      },
                  ),
          ),
        ],
      ),
    );


  }

}
