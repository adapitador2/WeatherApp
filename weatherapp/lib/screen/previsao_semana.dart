import 'package:flutter/material.dart';
import 'package:weatherapp/models/clima.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/faixa_temperatura.dart';
import 'package:weatherapp/widgets/linha_previsao.dart';
import 'package:weatherapp/widgets/resumo_dia.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  final Clima clima;
  const new({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previsão da semana - ${clima.cidade}"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Faixa de temperatura"),
          FaixaTemperatura(
            tmin: clima.minimaSemana,
            tmedia: clima.mediaSemana,
            tmax: clima.maximaSemana,
          ),

          Divider(),
          TituloSecao(titulo: "Resumo do dia"),
          ResumoDia(manha: clima.manha, tarde: clima.tarde),

          Divider(),
          TituloSecao(titulo: "Próximos dias"),
          ...clima.previsao
              .map(
                (dia) => Column(
                  children: [
                    LinhaPrevisao(
                      dia: dia.dia,
                      icone: dia.icone,
                      tmin: dia.tmin,
                      tmax: dia.tmax,
                    ),
                    Divider(),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
