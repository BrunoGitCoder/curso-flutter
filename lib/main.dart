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
    final perguntas = [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Amarelo', 'Azul'],
      },
      {
        'texto': 'Qual seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Macaco', 'Cavalo'],
      },
    ];

    _numeroPergunta = _numeroPergunta > perguntas.length - 1
        ? perguntas.length - 1
        : _numeroPergunta;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text('Pergntas')),
        body: Column(
          children: [
            Questao(texto: perguntas[_numeroPergunta]['texto'].toString()),
            ...(perguntas[_numeroPergunta]['respostas'] as List<String>).map((resposta) {
              return Resposta(onSelect: _responder, texto: resposta);
            })
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
