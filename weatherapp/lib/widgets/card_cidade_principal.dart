import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/info_clima.dart';

class CardCidadePrincipal extends StatelessWidget {
  final String cidade;
  final IconData icone;
  final int temperatura;
  final int tmin;
  final int tmax;
  final int umidade;
  final int vento;
  final int chuva;
  final VoidCallback onTap;
  const new({
    super.key,
    required this.cidade,
    required this.icone,
    required this.temperatura,
    required this.tmin,
    required this.tmax,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.onTap,
  });

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
                      cidade,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text("min: $tmin°C"),
                  SizedBox(width: 12),
                  Text("max: $tmax°C"),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    color: Colors.white,
                    child: Icon(icone, color: Colors.amber, size: 56),
                  ),
                  SizedBox(width: 16),
                  Text(
                    "$temperatura°C",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfoClima(icone: Icons.water_drop, valor: "$umidade%"),
                  InfoClima(icone: Icons.air, valor: "$vento km/h"),
                  InfoClima(icone: Icons.umbrella, valor: "$chuva%"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
