import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _numeroPergunta = 0;

  void _responder() {
    print('Pergunta respondida.');
    setState(() {
      _numeroPergunta++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const perguntas = ['1+1', '2+2'];
    const respostas = [
      ['2', '55', '8'],
      ['8', '6', '4'],
    ];
    _numeroPergunta = _numeroPergunta > perguntas.length - 1
        ? perguntas.length - 1
        : _numeroPergunta;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Pergntas')),
        body: Column(
          children: [
            Questao(texto: perguntas[_numeroPergunta]),
            Resposta(
              onSelect: _responder,
              texto: respostas[_numeroPergunta][0],
            ),
            Resposta(
              onSelect: _responder,
              texto: respostas[_numeroPergunta][1],
            ),
            Resposta(
              onSelect: _responder,
              texto: respostas[_numeroPergunta][2],
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
