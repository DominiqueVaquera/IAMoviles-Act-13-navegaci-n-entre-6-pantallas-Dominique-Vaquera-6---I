import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/inicio.dart';
import 'package:myapp/mispantallas/pantalla2.dart';
import 'package:myapp/mispantallas/pantalla3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaginaUno(),
      routes: <String, WidgetBuilder>{
        '/segunda': (BuildContext context) => const PaginaDos(),
        '/tercera': (BuildContext context) => const PaginaTres(),
      },
    );
  }
}
