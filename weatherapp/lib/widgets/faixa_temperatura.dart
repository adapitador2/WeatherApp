import 'package:flutter/material.dart';

class FaixaTemperatura extends StatelessWidget {
  final int tmin;
  final int tmedia;
  final int tmax;
  const new({
    super.key,
    required this.tmin,
    required this.tmedia,
    required this.tmax,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            color: Colors.lightBlue,
            child: Center(child: Text("mínima: $tmin°C")),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            height: 60,
            color: Colors.blue,
            child: Center(child: Text("média: $tmedia°C")),
          ),
        ),
        Expanded(
          child: Container(
            height: 60,
            color: Colors.lightBlue,
            child: Center(child: Text("máxima: $tmax°C")),
          ),
        ),
      ],
    );
  }
}
