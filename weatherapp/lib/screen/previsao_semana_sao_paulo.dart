import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/faixa_temperatura.dart';
import 'package:weatherapp/widgets/linha_previsao.dart';
import 'package:weatherapp/widgets/resumo_dia.dart';

class PrevisaoSemanaSaoPauloScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previsão da semana - São Paulo"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Faixa de temperatura"),
          FaixaTemperatura(tmin: 17, tmedia: 24, tmax: 30),

          Divider(),
          TituloSecao(titulo: "Resumo do dia"),
          ResumoDia(manha: 21, tarde: 27),

          Divider(),
          TituloSecao(titulo: "Próximos dias"),
          LinhaPrevisao(dia: "Terça-feira", icone: Icons.thunderstorm, tmin: 18, tmax: 25),
          Divider(),
          LinhaPrevisao(dia: "Quarta-feira", icone: Icons.cloud, tmin: 17, tmax: 24),
          Divider(),
          LinhaPrevisao(dia: "Quinta-feira", icone: Icons.wb_sunny, tmin: 18, tmax: 28),
          Divider(),
          LinhaPrevisao(dia: "Sexta-feira", icone: Icons.wb_sunny, tmin: 19, tmax: 30),
          Divider(),
          LinhaPrevisao(dia: "Sábado", icone: Icons.cloud, tmin: 20, tmax: 29),
          Divider(),
          LinhaPrevisao(dia: "Domingo", icone: Icons.thunderstorm, tmin: 19, tmax: 26),
          Divider(),
          LinhaPrevisao(dia: "Segunda-feira", icone: Icons.cloud, tmin: 18, tmax: 25),
          Divider(),
        ],
      ),
    );
  }
}
