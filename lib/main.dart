
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
runApp(PerguntaApp());

}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }
    @override
    Widget build(BuildContext context) {
      final perguntas = [
        'Qual é a sua cor favorita ?',
        'Qual é o seu animal favorito ?',
      ];

      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),

          body: Column(
            children: [
              Text(perguntas[perguntaSelecionada]),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                  child: Text('Resposta 1'),
                  onPressed:  responder,

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  child: Text('Resposta 2'),
                  onPressed:  responder,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                  child: Text('Resposta 3'),
                  onPressed:  responder ,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

 class PerguntaApp extends StatefulWidget {

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
 }