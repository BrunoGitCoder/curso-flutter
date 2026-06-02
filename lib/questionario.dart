import 'package:flutter/material.dart';
import 'package:teste/questao.dart';
import 'package:teste/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int numeroPergunta;
  final void Function() responder;

  const Questionario({
    super.key,
    required this.perguntas,
    required this.numeroPergunta,
    required this.responder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(texto: perguntas[numeroPergunta]['texto'].toString()),
        ...(perguntas[numeroPergunta]['respostas'] as List<String>).map((
          resposta,
        ) {
          return Resposta(onSelect: responder, texto: resposta);
        }),
      ],
    );
  }
}
