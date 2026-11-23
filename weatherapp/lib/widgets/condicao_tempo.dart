import 'package:flutter/material.dart';

class CondicaoTempo extends StatelessWidget {
  final String imagem;
  final IconData icone;
  final int temperatura;
  final String condicao;
  const new({
    super.key,
    required this.imagem,
    required this.icone,
    required this.temperatura,
    required this.condicao,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          imagem,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$temperatura°C",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                condicao,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Icon(icone, color: Colors.white, size: 32),
        ),
      ],
    );
  }
}
