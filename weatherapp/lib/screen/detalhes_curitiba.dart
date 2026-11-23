import 'package:flutter/material.dart';
import 'package:weatherapp/screen/previsao_semana_curitiba.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/card_alerta.dart';
import 'package:weatherapp/widgets/card_indicador.dart';
import 'package:weatherapp/widgets/condicao_tempo.dart';
import 'package:weatherapp/widgets/previsao_dia_compacta.dart';

class DetalhesCuritibaScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes avançados - Curitiba"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Condição do tempo"),
          CondicaoTempo(
            imagem: "https://picsum.photos/id/1018/600/400",
            icone: Icons.thunderstorm,
            temperatura: 21,
            condicao: "Chuva e trovoadas isoladas",
          ),

          Divider(),
          TituloSecao(titulo: "Alertas"),
          CardAlerta(
            icone: Icons.thunderstorm,
            titulo: "Tempestade",
            descricao: "Risco de granizo no fim da tarde",
          ),
          CardAlerta(
            icone: Icons.ac_unit,
            titulo: "Queda de temperatura",
            descricao: "Frente fria chega na quinta-feira",
          ),

          Divider(),
          TituloSecao(titulo: "Previsão semana"),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PrevisaoSemanaCuritibaScreen()),
            ),
            child: Card(
              child: SizedBox(
                height: 110,
                child: Row(
                  children: [
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Ter",
                        icone: Icons.thunderstorm,
                        tmin: 15,
                        tmax: 22,
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Qua",
                        icone: Icons.cloud,
                        tmin: 14,
                        tmax: 21,
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Qui",
                        icone: Icons.cloud,
                        tmin: 11,
                        tmax: 17,
                      ),
                    ),
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
              CardIndicador(
                icone: Icons.wb_sunny,
                valor: "5",
                nome: "Índice UV",
              ),
              CardIndicador(
                icone: Icons.speed,
                valor: "1015 hPa",
                nome: "Pressão",
              ),
              CardIndicador(
                icone: Icons.visibility,
                valor: "6 km",
                nome: "Visibilidade",
              ),
              CardIndicador(
                icone: Icons.wb_twilight,
                valor: "05:34",
                nome: "Nascer do sol",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
