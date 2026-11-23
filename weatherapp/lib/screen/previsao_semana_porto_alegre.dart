import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/faixa_temperatura.dart';
import 'package:weatherapp/widgets/linha_previsao.dart';
import 'package:weatherapp/widgets/resumo_dia.dart';

class PrevisaoSemanaPortoAlegreScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previsão da semana - Porto Alegre"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Faixa de temperatura"),
          FaixaTemperatura(tmin: 12, tmedia: 20, tmax: 29),

          Divider(),
          TituloSecao(titulo: "Resumo do dia"),
          ResumoDia(manha: 21, tarde: 29),

          Divider(),
          TituloSecao(titulo: "Próximos dias"),
          LinhaPrevisao(dia: "Terça-feira", icone: Icons.wb_cloudy, tmin: 19, tmax: 29),
          Divider(),
          LinhaPrevisao(dia: "Quarta-feira", icone: Icons.thunderstorm, tmin: 18, tmax: 26),
          Divider(),
          LinhaPrevisao(dia: "Quinta-feira", icone: Icons.thunderstorm, tmin: 16, tmax: 22),
          Divider(),
          LinhaPrevisao(dia: "Sexta-feira", icone: Icons.cloud, tmin: 13, tmax: 20),
          Divider(),
          LinhaPrevisao(dia: "Sábado", icone: Icons.wb_sunny, tmin: 12, tmax: 23),
          Divider(),
          LinhaPrevisao(dia: "Domingo", icone: Icons.wb_sunny, tmin: 14, tmax: 27),
          Divider(),
          LinhaPrevisao(dia: "Segunda-feira", icone: Icons.wb_cloudy, tmin: 17, tmax: 29),
          Divider(),
        ],
      ),
    );
  }
}
