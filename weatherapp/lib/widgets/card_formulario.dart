import 'package:flutter/material.dart';
import 'package:weatherapp/models/clima.dart';
import 'package:weatherapp/widgets/info_clima.dart';

class CardCidadePrincipal extends StatelessWidget {
  final Clima clima;
  final VoidCallback onTap;
  const new({super.key, required this.clima, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        color: Colors.lightBlue.shade100,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      clima.cidade,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text("min: ${clima.temperaturaMinima}°C"),
                  SizedBox(width: 12),
                  Text("max: ${clima.temperaturaMaxima}°C"),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    color: Colors.white,
                    child: Icon(clima.icone, color: Colors.amber, size: 56),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "${clima.temperaturaAtual}°C",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfoClima(
                    icone: Icons.water_drop,
                    valor: "${clima.umidade}%",
                  ),
                  InfoClima(icone: Icons.air, valor: "${clima.vento} km/h"),
                  InfoClima(icone: Icons.umbrella, valor: "${clima.chuva}%"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
