import 'package:flutter/material.dart';

class ResumoDia extends StatelessWidget {
  final int manha;
  final int tarde;
  const new({super.key, required this.manha, required this.tarde});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blueAccent,
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Center(child: Text("manhã: $manha°C")),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.deepPurpleAccent,
              child: Center(child: Text("tarde: $tarde°C")),
            ),
          ),
        ],
      ),
    );
  }
}
