import 'package:flutter/material.dart';
import 'package:weatherapp/models/clima.dart';

class CardCidade extends StatelessWidget {
  final Clima clima;
  final VoidCallback onTap;
  const new({super.key, required this.clima, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    clima.cidade,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${clima.temperaturaAtual}°C",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text("min: ${clima.temperaturaMinima}°C"),
                  SizedBox(width: 16),
                  Text("max: ${clima.temperaturaMaxima}°C"),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Umi. ${clima.umidade}%"),
                  Text("Vent. ${clima.vento} km/h"),
                  Text("Chuva ${clima.chuva}%"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
