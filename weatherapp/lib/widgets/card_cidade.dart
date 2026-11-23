import 'package:flutter/material.dart';

class CardCidade extends StatelessWidget {
  final String cidade;
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
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cidade,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$temperatura°C",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text("min: $tmin°C"),
                  SizedBox(width: 16),
                  Text("max: $tmax°C"),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Umi. $umidade%"),
                  Text("Vent. $vento km/h"),
                  Text("Chuva $chuva%"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
