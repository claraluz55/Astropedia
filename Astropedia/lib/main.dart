import 'package:Astropedia/pantalla_carga.dart';
import 'package:flutter/material.dart';
import 'package:Astropedia/bio_Astro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //eliminar etiqueta de debuf
      debugShowCheckedModeBanner: false,
      color: Colors.blueAccent,
      title: 'Material App',
      routes: {
        'pantallaCarga': (BuildContext context) => PantallaDeCarga(),
      },
      //home: BioAstro(),
      initialRoute: 'pantallaCarga',
    );
  }
}
