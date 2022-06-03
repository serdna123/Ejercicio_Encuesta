import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 50),
              child: Icon(
                Icons.wb_sunny_outlined,
                size: 100,
                color: Colors.purple.shade100,
              ),
            ),
            Card(
              margin: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.indigo.shade300,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(10),
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 10, bottom: 25),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.indigo.shade200,
                          Colors.purple.shade300,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "Ejercicio Encuestas",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/encuesta-page');
                    },
                    style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.indigo.shade100,
                        elevation: 4,
                        side: const BorderSide(width: 1)),
                    child: const Text("Realizar Encuesta"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/banco-preguntas-page');
                    },
                    style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.indigo.shade100,
                        elevation: 4,
                        side: const BorderSide(width: 1)),
                    child: const Text("Banco de pregunta"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
