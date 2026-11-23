import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes avançados"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Alertas"),
          Card(
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.orange),
              title: Text("Chuva forte"),
              subtitle: Text("Previsto para hoje, a partir das 18h"),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.air, color: Colors.blue),
              title: Text("Ventos fortes"),
              subtitle: Text("Rajadas de até 60 km/h durante a noite"),
              trailing: Icon(Icons.chevron_right),
            ),
          ),

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
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny, color: Colors.amber, size: 32),
                    Text(
                      "6",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Índice UV"),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.speed, color: Colors.blue, size: 32),
                    Text(
                      "1013 hPa",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Pressão"),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.visibility, color: Colors.grey, size: 32),
                    Text(
                      "10 km",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Visibilidade"),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_twilight, color: Colors.deepOrange, size: 32),
                    Text(
                      "05:42",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Nascer do sol"),
                  ],
                ),
              ),
            ],
          ),

          Divider(),
          TituloSecao(titulo: "Condição do tempo"),
          Stack(
            children: [
              Image.network(
                "https://picsum.photos/id/1015/600/400",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 16,
                bottom: 16,
                child: Text(
                  "26°C",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Icon(Icons.wb_sunny, color: Colors.white, size: 32),
              ),
            ],
          ),

          Divider(),
          TituloSecao(titulo: "Tags"),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(
                avatar: Icon(Icons.thunderstorm, size: 18),
                label: Text("Chuva forte"),
              ),
              Chip(
                avatar: Icon(Icons.wb_sunny, size: 18),
                label: Text("UV alto"),
              ),
              Chip(label: Text("Vento moderado")),
              Chip(label: Text("Umidade alta")),
              Chip(label: Text("Frente fria")),
            ],
          ),
        ],
      ),
    );
  }
}
