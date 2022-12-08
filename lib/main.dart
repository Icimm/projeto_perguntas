
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
  {
   'texto':'Qual é a sua cor favotita ?',
    'respostas': [
    {'texto' : 'Preto','pontuacao': 10},
    {'texto' : 'Vermelho','pontuacao': 5},
    {'texto' : 'Verde','pontuacao': 3},
    {'texto' : 'Branco', 'pontuacao' :1},
   ],
  },
  {
    'texto':'Qual é o seu animal favorito ?',
    'respostas': [
    {'texto' : 'Coelho','pontuacao': 10},
    {'texto' : 'Cobra','pontuacao': 5},
    {'texto' : 'Elefante','pontuacao': 3},
    {'texto' : 'Leão', 'pontuacao' :1},
  ],
},
    {
      'texto':'Qual é o seu instrutor favorito ?',
      'respostas': [
        {'texto' : 'Léo','pontuacao': 10},
        {'texto' : 'Maria','pontuacao': 5},
        {'texto' : 'João','pontuacao': 3},
        {'texto' : 'Pedro', 'pontuacao' :1},
      ],
    },
  ];

  void _responder() {
    if(temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

    @override
    Widget build(BuildContext context) {


      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
               ? Questionario(
               perguntas: _perguntas,
               perguntaSelecionada: _perguntaSelecionada,
               quantoResponder: _responder,
             )
              : Resultado(),
          ),
      );
    }
  }

 class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
 }