import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/faixa_temperatura.dart';
import 'package:weatherapp/widgets/linha_previsao.dart';
import 'package:weatherapp/widgets/resumo_dia.dart';

class PrevisaoSemanaRioDeJaneiroScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previsão da semana - Rio de Janeiro"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Faixa de temperatura"),
          FaixaTemperatura(tmin: 22, tmedia: 29, tmax: 36),

          Divider(),
          TituloSecao(titulo: "Resumo do dia"),
          ResumoDia(manha: 27, tarde: 34),

          Divider(),
          TituloSecao(titulo: "Próximos dias"),
          LinhaPrevisao(dia: "Terça-feira", icone: Icons.wb_sunny, tmin: 24, tmax: 35),
          Divider(),
          LinhaPrevisao(dia: "Quarta-feira", icone: Icons.wb_sunny, tmin: 25, tmax: 36),
          Divider(),
          LinhaPrevisao(dia: "Quinta-feira", icone: Icons.cloud, tmin: 24, tmax: 33),
          Divider(),
          LinhaPrevisao(dia: "Sexta-feira", icone: Icons.thunderstorm, tmin: 23, tmax: 30),
          Divider(),
          LinhaPrevisao(dia: "Sábado", icone: Icons.cloud, tmin: 22, tmax: 29),
          Divider(),
          LinhaPrevisao(dia: "Domingo", icone: Icons.wb_sunny, tmin: 23, tmax: 31),
          Divider(),
          LinhaPrevisao(dia: "Segunda-feira", icone: Icons.wb_sunny, tmin: 24, tmax: 33),
          Divider(),
        ],
      ),
    );
  }
}
