import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final void Function() onSelect;
  final String texto;

  const Resposta({super.key, required this.onSelect, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
      child: ElevatedButton(
        onPressed: onSelect,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white70,
        ),
        child: Text(texto),
      ),
    );
  }
}
