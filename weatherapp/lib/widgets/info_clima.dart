import 'package:flutter/material.dart';

class InfoClima extends StatelessWidget {
  final IconData icone;
  final String valor;
  const new({super.key, required this.icone, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icone, color: Colors.blue, size: 28),
        SizedBox(height: 4),
        Text(valor),
      ],
    );
  }
}
