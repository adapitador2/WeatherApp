import 'package:flutter/material.dart';
import 'package:weatherapp/screen/previsao_semana_rio_de_janeiro.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';
import 'package:weatherapp/widgets/card_alerta.dart';
import 'package:weatherapp/widgets/card_indicador.dart';
import 'package:weatherapp/widgets/condicao_tempo.dart';
import 'package:weatherapp/widgets/previsao_dia_compacta.dart';

class DetalhesRioDeJaneiroScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes avançados - Rio de Janeiro"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Condição do tempo"),
          CondicaoTempo(
            imagem: "https://picsum.photos/id/1016/600/400",
            icone: Icons.wb_sunny,
            temperatura: 31,
            condicao: "Ensolarado e quente",
          ),

          Divider(),
          TituloSecao(titulo: "Alertas"),
          CardAlerta(
            icone: Icons.wb_sunny,
            titulo: "Calor intenso",
            descricao: "Sensação térmica acima de 38°C entre 12h e 16h",
          ),

          Divider(),
          TituloSecao(titulo: "Previsão semana"),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => PrevisaoSemanaRioDeJaneiroScreen()),
            ),
            child: Card(
              child: SizedBox(
                height: 110,
                child: Row(
                  children: [
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Ter",
                        icone: Icons.wb_sunny,
                        tmin: 24,
                        tmax: 35,
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Qua",
                        icone: Icons.wb_sunny,
                        tmin: 25,
                        tmax: 36,
                      ),
                    ),
                    VerticalDivider(),
                    Expanded(
                      child: PrevisaoDiaCompacta(
                        dia: "Qui",
                        icone: Icons.cloud,
                        tmin: 24,
                        tmax: 33,
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
                valor: "11",
                nome: "Índice UV",
              ),
              CardIndicador(
                icone: Icons.speed,
                valor: "1009 hPa",
                nome: "Pressão",
              ),
              CardIndicador(
                icone: Icons.visibility,
                valor: "12 km",
                nome: "Visibilidade",
              ),
              CardIndicador(
                icone: Icons.wb_twilight,
                valor: "05:08",
                nome: "Nascer do sol",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
