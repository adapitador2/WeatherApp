import 'package:flutter/material.dart';

class LinhaPrevisao extends StatelessWidget {
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
    return Row(
      children: [
        Flexible(flex: 2, child: Text(dia)),
        Expanded(child: Icon(icone, color: Colors.amber, size: 28)),
        Expanded(child: Text("max: $tmax°C")),
        Expanded(child: Text("min: $tmin°C")),
      ],
    );
  }
}
