import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/titulo_secao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(title: Text("WeatherApp"), backgroundColor: Colors.blue),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TituloSecao(titulo: "Cidade Atual"),
            Text(
              "piraporinha do norte",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              "Segunda-feira, 15 de outubro",
              style: TextStyle(fontSize: 16),
            ),

            Divider(),
            TituloSecao(titulo: "Temperatura"),
            Text(
              "20°C",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Text("sensação termica: 42°C", style: TextStyle(fontSize: 16)),

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text("99%"), Text("99 km/h"), Text("99%")],
            ),

            Divider(),
            TituloSecao(titulo: "Atulização"),
            ElevatedButton(onPressed: () {}, child: Text("atualizar")),
          ],
        ),
      ),
    );
  }
}
