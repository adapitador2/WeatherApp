import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/Titulo_secao.dart';

class ClimaAtualScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clima atual"), backgroundColor: Colors.blue),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: "Cidade Atual"),
          Container(
            color: Colors.lightBlue.shade100,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "piraporinha do norte",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Segunda-feira, 15 de outubro",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          Divider(),
          TituloSecao(titulo: "Temperatura"),
          Center(
            child: Text(
              "20°C",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 8),

          Center(
            child: Text(
              "sensação termica: 42°C",
              style: TextStyle(fontSize: 16),
            ),
          ),

          Divider(),
          TituloSecao(titulo: "Condição do tempo"),
          Image.network(
            "https://media.istockphoto.com/id/2185711639/pt/foto/flying-duck.jpg?s=2048x2048&w=is&k=20&c=Xjup2zIPcKGRyeb0LthaohIEKNXoljP8DoBSRhW_Z9s=",
            height: 200,
          ),

          Divider(),
          TituloSecao(titulo: "Detalhes"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.water_drop, color: Colors.blue, size: 32),
              Icon(Icons.air, color: Colors.blue, size: 32),
              Icon(Icons.umbrella, color: Colors.blue, size: 32),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("99%"), Text("99 km/h"), Text("99%")],
            ),
          ),

          Divider(),
          TituloSecao(titulo: "Atulização"),
          Center(
            child: ElevatedButton(onPressed: () {}, child: Text("atualizar")),
          ),
          SizedBox(height: 16),
          Container(
            height: 80,
            color: Colors.grey.shade200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text("Última atualização: 11:11"),
            ),
          ),
        ],
      ),
    );
  }
}
