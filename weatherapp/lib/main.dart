import 'package:flutter/material.dart';
import 'package:weatherapp/screen/detalhes_curitiba.dart';
import 'package:weatherapp/screen/detalhes_porto_alegre.dart';
import 'package:weatherapp/screen/detalhes_rio_de_janeiro.dart';
import 'package:weatherapp/screen/detalhes_sao_paulo.dart';
import 'package:weatherapp/widgets/card_cidade.dart';
import 'package:weatherapp/widgets/card_cidade_principal.dart';

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
      appBar: AppBar(title: Text("ClimaApp"), backgroundColor: Colors.blue),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CardCidadePrincipal(
            cidade: "São Paulo",
            icone: Icons.cloud,
            temperatura: 24,
            tmin: 19,
            tmax: 27,
            umidade: 72,
            vento: 14,
            chuva: 60,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetalhesSaoPauloScreen()),
            ),
          ),

          SizedBox(height: 16),
          Center(child: Text("Toque na cidade para ver mais")),
          SizedBox(height: 8),
          CardCidade(
            cidade: "Rio de Janeiro",
            temperatura: 31,
            tmin: 24,
            tmax: 34,
            umidade: 68,
            vento: 18,
            chuva: 20,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetalhesRioDeJaneiroScreen()),
            ),
          ),
          CardCidade(
            cidade: "Curitiba",
            temperatura: 21,
            tmin: 15,
            tmax: 25,
            umidade: 80,
            vento: 12,
            chuva: 70,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetalhesCuritibaScreen()),
            ),
          ),
          CardCidade(
            cidade: "Porto Alegre",
            temperatura: 26,
            tmin: 18,
            tmax: 30,
            umidade: 60,
            vento: 22,
            chuva: 40,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetalhesPortoAlegreScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
