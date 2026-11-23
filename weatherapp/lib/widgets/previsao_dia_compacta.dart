import 'package:flutter/material.dart';

class PrevisaoDiaCompacta extends StatelessWidget {
  final String dia;
  final IconData icone;
  final int tmin;
  final int tmax;
  const new({
    super.key,
    required this.dia,
    required this.icone,
    required this.tmin,
    required this.tmax,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(dia, style: TextStyle(fontWeight: FontWeight.bold)),
        Text("min: $tmin°C"),
        Icon(icone, color: Colors.amber, size: 28),
        Text("max: $tmax°C"),
      ],
    );
  }
}
