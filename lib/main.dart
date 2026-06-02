import 'package:flutter/material.dart';
import 'package:teste/questionario.dart';
import 'package:teste/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _numeroPergunta = 0;
  static const _perguntas = [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Amarelo', 'Azul', 'Caramelo'],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Macaco', 'Cavalo'],
    },
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _numeroPergunta++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _numeroPergunta < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Pergntas')),
        body: temPerguntaSelecionada
            ? Questionario(perguntas: _perguntas, numeroPergunta: _numeroPergunta, responder: _responder)
            : Resultado(texto: 'Parabéns', tamanhoFonte: 35),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
