import 'package:flutter/material.dart';
import 'package:weatherapp/screen/clima_atual.dart';
import 'package:weatherapp/screen/previsao_semana.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("weaterApp")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ClimaAtualScreen()),
            ),
            child: Text("Clima atual"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PrevisaoSemanaScreen()),
            ),
            child: Text("Previsão da semana"),
          ),
        ],
      ),
    );
  }
}
