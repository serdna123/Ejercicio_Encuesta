import 'package:ejercicio_encuesta/pages/banco_preguntas_page.dart';
import 'package:ejercicio_encuesta/pages/encuesta_page.dart';
import 'package:ejercicio_encuesta/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          "/encuesta-page": (context) => const EncuestaPage(),
          "/banco-preguntas-page": (context) => const BancoPreguntasEncuesta(),
        });
  }
}
