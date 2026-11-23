import 'package:flutter/material.dart';
import 'package:weatherapp/screen/previsao_semana_sao_paulo.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/card_alerta.dart';
import 'package:weatherapp/widgets/card_indicador.dart';
import 'package:weatherapp/widgets/condicao_tempo.dart';
import 'package:weatherapp/widgets/previsao_dia_compacta.dart';

class DetalhesSaoPauloScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes avançados - São Paulo"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Condição do tempo"),
          CondicaoTempo(
            imagem: "https://picsum.photos/id/1015/600/400",
            icone: Icons.cloud,
            temperatura: 24,
            condicao: "Nublado, com pancadas à tarde",
          ),

          Divider(),
          TituloSecao(titulo: "Alertas"),
          CardAlerta(
            icone: Icons.thunderstorm,
            titulo: "Chuva forte",
            descricao: "Previsto para hoje, a partir das 18h",
          ),
          CardAlerta(
            icone: Icons.air,
            titulo: "Rajadas de vento",
            descricao: "Até 50 km/h no fim da tarde",
          ),

          Divider(),
          TituloSecao(titulo: "Previsão semana"),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PrevisaoSemanaSaoPauloScreen()),
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
                        tmin: 18,
                        tmax: 25,
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Qua",
                        icone: Icons.cloud,
                        tmin: 17,
                        tmax: 24,
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Qui",
                        icone: Icons.wb_sunny,
                        tmin: 18,
                        tmax: 28,
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
                valor: "7",
                nome: "Índice UV",
              ),
              CardIndicador(
                icone: Icons.speed,
                valor: "1011 hPa",
                nome: "Pressão",
              ),
              CardIndicador(
                icone: Icons.visibility,
                valor: "8 km",
                nome: "Visibilidade",
              ),
              CardIndicador(
                icone: Icons.wb_twilight,
                valor: "05:25",
                nome: "Nascer do sol",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
