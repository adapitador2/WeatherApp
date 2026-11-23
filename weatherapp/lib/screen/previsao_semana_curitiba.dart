import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/faixa_temperatura.dart';
import 'package:weatherapp/widgets/linha_previsao.dart';
import 'package:weatherapp/widgets/resumo_dia.dart';

class PrevisaoSemanaCuritibaScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previsão da semana - Curitiba"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Faixa de temperatura"),
          FaixaTemperatura(tmin: 9, tmedia: 16, tmax: 24),

          Divider(),
          TituloSecao(titulo: "Resumo do dia"),
          ResumoDia(manha: 17, tarde: 24),

          Divider(),
          TituloSecao(titulo: "Próximos dias"),
          LinhaPrevisao(dia: "Terça-feira", icone: Icons.thunderstorm, tmin: 15, tmax: 22),
          Divider(),
          LinhaPrevisao(dia: "Quarta-feira", icone: Icons.cloud, tmin: 14, tmax: 21),
          Divider(),
          LinhaPrevisao(dia: "Quinta-feira", icone: Icons.cloud, tmin: 11, tmax: 17),
          Divider(),
          LinhaPrevisao(dia: "Sexta-feira", icone: Icons.wb_sunny, tmin: 9, tmax: 18),
          Divider(),
          LinhaPrevisao(dia: "Sábado", icone: Icons.wb_sunny, tmin: 10, tmax: 22),
          Divider(),
          LinhaPrevisao(dia: "Domingo", icone: Icons.cloud, tmin: 13, tmax: 24),
          Divider(),
          LinhaPrevisao(dia: "Segunda-feira", icone: Icons.thunderstorm, tmin: 15, tmax: 23),
          Divider(),
        ],
      ),
    );
  }
}
