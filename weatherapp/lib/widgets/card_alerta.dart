import 'package:flutter/material.dart';

class CardAlerta extends StatelessWidget {
  final IconData icone;
  final String titulo;
  final String descricao;
  const new({
    super.key,
    required this.icone,
    required this.titulo,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icone, color: Colors.orange),
        title: Text(titulo),
        subtitle: Text(descricao),
      ),
    );
  }
}
