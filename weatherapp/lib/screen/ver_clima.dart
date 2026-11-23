import 'package:flutter/material.dart';
import 'package:weatherapp/models/clima.dart';
import 'package:weatherapp/screen/previsao_semana.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/card_alerta.dart';
import 'package:weatherapp/widgets/card_indicador.dart';
import 'package:weatherapp/widgets/condicao_tempo.dart';
import 'package:weatherapp/widgets/previsao_dia_compacta.dart';

class VerClimaScreen extends StatelessWidget {
  final Clima clima;
  const new({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    final proximosDias = clima.previsao.take(3).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes avançados - ${clima.cidade}"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Condição do tempo"),
          CondicaoTempo(
            imagem: clima.imagem,
            icone: clima.icone,
            temperatura: clima.temperaturaAtual,
            condicao: clima.condicao,
          ),

          Divider(),
          TituloSecao(titulo: "Alertas"),
          ...clima.alertas
              .map(
                (alerta) => CardAlerta(
                  icone: alerta.icone,
                  titulo: alerta.titulo,
                  descricao: alerta.descricao,
                ),
              )
              .toList(),

          Divider(),
          TituloSecao(titulo: "Previsão semana"),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => PrevisaoSemanaScreen(clima: clima),
              ),
            ),
            child: Card(
              child: SizedBox(
                height: 110,
                child: Row(
                  children: [
                    for (int i = 0; i < proximosDias.length; i++) ...[
                      if (i > 0) VerticalDivider(),
                      Expanded(
                        child: PrevisaoDiaCompacta(
                          dia: proximosDias[i].dia.substring(0, 3),
                          icone: proximosDias[i].icone,
                          tmin: proximosDias[i].tmin,
                          tmax: proximosDias[i].tmax,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
          Center(child: Text("Toque para ver a previsão da semana")),

          Divider(),
          TituloSecao(titulo: "Indicadores"),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1.3,
            children: [
              ...clima.indicadores
                  .map(
                    (indicador) => CardIndicador(
                      icone: indicador.icone,
                      valor: indicador.valor,
                      nome: indicador.nome,
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
