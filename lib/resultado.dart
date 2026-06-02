import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;
  final double tamanhoFonte;

  const Resultado({super.key, required this.texto, required this.tamanhoFonte});

  Widget build(BuildContext context) {
    return Center(child: Text(texto, style: TextStyle(fontSize: tamanhoFonte)));
  }
}