import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  // Lista de íconos y textos para cada elemento del ListView
  final List<Map<String, dynamic>> items = [
    {'icon': Icons.directions_bike, 'text': 'bike'},
    {'icon': Icons.directions_boat, 'text': 'boat'},
    {'icon': Icons.directions_bus, 'text': 'bus'},
    {'icon': Icons.directions_car, 'text': 'car'},
    {'icon': Icons.directions_railway, 'text': 'railway'},
    {'icon': Icons.directions_run, 'text': 'run'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Camila Rodriguez 1300'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.teal, // Color personalizado para el AppBar
        elevation: 10, // Sombra en el AppBar
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1, // Sombra en cada elemento del ListView
            margin:
                EdgeInsets.only(bottom: 12), // Margen solo en la parte inferior
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(2), // Bordes menos redondeados
            ),
            child: ListTile(
              leading: Icon(items[index]['icon'],
                  color: Color(0xffa2a0a4)), // Color del ícono
              title: Text(items[index]['text']),
              minLeadingWidth: 40, // Más espacio entre el ícono y el texto
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16), // Padding horizontal
            ),
          );
        },
      ),
    );
  }
}
