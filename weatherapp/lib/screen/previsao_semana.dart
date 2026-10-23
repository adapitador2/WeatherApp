import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/linha_previsao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clima atual"), backgroundColor: Colors.blue),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Faixa de temperatura"),

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue,
                  child: Center(child: Text("minimo: -3°C")),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.blue,
                  child: Center(child: Text("minimo: -3°C")),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue,
                  child: Center(child: Text("minimo: -3°C")),
                ),
              ),
            ],
          ),

          Divider(),
          TituloSecao(titulo: "Resumo do dia"),
          Container(
            height: 200,
            color: Colors.blueAccent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Center(child: Text("manhã: 50°C")),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.deepPurpleAccent,
                    child: Center(child: Text("Tarde: 30°C")),
                  ),
                ),
              ],
            ),
          ),

          Divider(),
          TituloSecao(titulo: "Próximos dias"),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          LinhaPrevisao(
            dia: "segunda-feira",
            icone: Icons.wb_sunny,
            tmin: 2,
            tmax: 5,
          ),
          Divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          LinhaPrevisao(
            dia: "Terça-feira",
            icone: Icons.wb_sunny,
            tmin: 2,
            tmax: 5,
          ),
          Divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          LinhaPrevisao(
            dia: "Quarta-feira",
            icone: Icons.wb_sunny,
            tmin: 2,
            tmax: 5,
          ),
          Divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          LinhaPrevisao(
            dia: "Quinta-feira",
            icone: Icons.wb_sunny,
            tmin: 2,
            tmax: 5,
          ),
          Divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          LinhaPrevisao(
            dia: "Sexta-feira",
            icone: Icons.wb_sunny,
            tmin: 2,
            tmax: 5,
          ),
          Divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          LinhaPrevisao(dia: "Sabado", icone: Icons.wb_sunny, tmin: 2, tmax: 5),
          Divider(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8)),
          LinhaPrevisao(
            dia: "Domingo",
            icone: Icons.wb_sunny,
            tmin: 2,
            tmax: 5,
          ),
          Divider(),
        ],
      ),
    );
  }
}
