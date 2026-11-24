import 'package:flutter/material.dart';
import 'package:weatherapp/models/clima.dart';
import 'package:weatherapp/screen/formulario.dart';
import 'package:weatherapp/screen/ver_clima.dart';
import 'package:weatherapp/widgets/card_cidade.dart';
import 'package:weatherapp/widgets/card_cidade_principal.dart';
import 'package:weatherapp/widgets/form_decoration.dart';

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

  void abrirCidade(BuildContext context, Clima clima) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => VerClimaScreen(clima: clima)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ClimaApp"), backgroundColor: Colors.blue),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            decoration: getInputDecoration('Pesquisar cidade')
                .copyWith(prefixIcon: Icon(Icons.search)),
          ),
          SizedBox(height: 16),
          CardCidadePrincipal(
            clima: cidades.first,
            onTap: () => abrirCidade(context, cidades.first),
          ),

          SizedBox(height: 16),
          Center(child: Text("Toque na cidade para ver mais")),
          SizedBox(height: 8),
          ...cidades
              .skip(1)
              .map(
                (clima) => CardCidade(
                  clima: clima,
                  onTap: () => abrirCidade(context, clima),
                ),
              )
              .toList(),

          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => Formulario()),
            ),
            child: Text("cadastre-se / entrar"),
          ),
        ],
      ),
    );
  }
}
