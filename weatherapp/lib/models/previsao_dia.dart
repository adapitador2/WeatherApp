import 'package:flutter/material.dart';

class PrevisaoDia {
  final String dia;
  final IconData icone;
  final int tmin;
  final int tmax;

  const PrevisaoDia({
    required this.dia,
    required this.icone,
    required this.tmin,
    required this.tmax,
  });
}
