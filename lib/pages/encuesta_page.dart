import 'package:flutter/material.dart';

class EncuestaPage extends StatefulWidget {
  const EncuestaPage({Key? key}) : super(key: key);

  @override
  State<EncuestaPage> createState() => _EncuestaPageState();
}

class _EncuestaPageState extends State<EncuestaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColorDark,
        appBar: AppBar(
          title: const Text('Encuesta'),
          backgroundColor: Theme.of(context).primaryColorDark,
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: LinearProgressIndicator(
                  color: Colors.amber.shade900,
                  value: .5,
                  minHeight: 20,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 450),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Card(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Text('encuesta1', style: Theme.of(context).textTheme.headline1,),
                    ),
                    Flexible(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.indigo.shade100, width: 2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ListTile(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                leading: Text('${index + 1}', style: Theme.of(context).textTheme.bodyText1,),
                                title: Text('Respuesta',style: Theme.of(context).textTheme.bodyText1,),
                                onTap: () {},
                              ),
                            );
                          }),
                    )
                  ]),
                ),
              ),
            ),
            TextButton(onPressed: () {}, child:  Text("S", style: Theme.of(context).textTheme.bodyText1,))
          ],
        ));
  }
}
