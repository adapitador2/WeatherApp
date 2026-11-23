import 'package:flutter/material.dart';

class CardIndicador extends StatelessWidget {
  final IconData icone;
  final String valor;
  final String nome;
  const new({
    super.key,
    required this.icone,
    required this.valor,
    required this.nome,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icone, color: Colors.blue, size: 32),
          Text(
            valor,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(nome),
        ],
      ),
    );
  }
}
