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
          primarySwatch: Colors.indigo,
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  shadows: [
                    Shadow(
                      color: Colors.purple.shade50.withOpacity(.3),
                      offset: const Offset(3, 3),
                      blurRadius: 5,
                    ),
                  ]),
              headline2: TextStyle(color: Colors.purple.shade50, fontSize: 20),
              bodyText1: TextStyle(
                color: Colors.purple.shade50,
                fontSize: 18,
              ),
              ),
              cardTheme: CardTheme(elevation: 6,
              color: Colors.purple.shade700,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),)
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const HomePage(),
          "/encuesta-page": (context) => const EncuestaPage(),
          "/banco-preguntas-page": (context) => const BancoPreguntasEncuesta(),
        });
  }
}
