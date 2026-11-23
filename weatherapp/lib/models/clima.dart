import 'package:flutter/material.dart';
import 'package:weatherapp/models/alerta.dart';
import 'package:weatherapp/models/indicador.dart';
import 'package:weatherapp/models/previsao_dia.dart';

class Clima {
  final String cidade;
  final String imagem;
  final IconData icone;
  final String condicao;
  final int temperaturaAtual;
  final int temperaturaMinima;
  final int temperaturaMaxima;
  final int umidade;
  final int vento;
  final int chuva;
  final int manha;
  final int tarde;
  final List<Alerta> alertas;
  final List<Indicador> indicadores;
  final List<PrevisaoDia> previsao;

  const Clima({
    required this.cidade,
    required this.imagem,
    required this.icone,
    required this.condicao,
    required this.temperaturaAtual,
    required this.temperaturaMinima,
    required this.temperaturaMaxima,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.manha,
    required this.tarde,
    required this.alertas,
    required this.indicadores,
    required this.previsao,
  });

  int get minimaSemana =>
      previsao.map((d) => d.tmin).reduce((a, b) => a < b ? a : b);

  int get maximaSemana =>
      previsao.map((d) => d.tmax).reduce((a, b) => a > b ? a : b);

  int get mediaSemana => ((minimaSemana + maximaSemana) / 2).round();
}

final List<Clima> cidades = [
  Clima(
    cidade: "São Paulo",
    imagem: "https://picsum.photos/id/1015/600/400",
    icone: Icons.cloud,
    condicao: "Nublado, com pancadas à tarde",
    temperaturaAtual: 24,
    temperaturaMinima: 19,
    temperaturaMaxima: 27,
    umidade: 72,
    vento: 14,
    chuva: 60,
    manha: 21,
    tarde: 27,
    alertas: [
      Alerta(
        icone: Icons.thunderstorm,
        titulo: "Chuva forte",
        descricao: "Previsto para hoje, a partir das 18h",
      ),
      Alerta(
        icone: Icons.air,
        titulo: "Rajadas de vento",
        descricao: "Até 50 km/h no fim da tarde",
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: "7", nome: "Índice UV"),
      Indicador(icone: Icons.speed, valor: "1011 hPa", nome: "Pressão"),
      Indicador(icone: Icons.visibility, valor: "8 km", nome: "Visibilidade"),
      Indicador(
        icone: Icons.wb_twilight,
        valor: "05:25",
        nome: "Nascer do sol",
      ),
    ],
    previsao: [
      PrevisaoDia(
        dia: "Terça-feira",
        icone: Icons.thunderstorm,
        tmin: 18,
        tmax: 25,
      ),
      PrevisaoDia(dia: "Quarta-feira", icone: Icons.cloud, tmin: 17, tmax: 24),
      PrevisaoDia(
        dia: "Quinta-feira",
        icone: Icons.wb_sunny,
        tmin: 18,
        tmax: 28,
      ),
      PrevisaoDia(
        dia: "Sexta-feira",
        icone: Icons.wb_sunny,
        tmin: 19,
        tmax: 30,
      ),
      PrevisaoDia(dia: "Sábado", icone: Icons.cloud, tmin: 20, tmax: 29),
      PrevisaoDia(
        dia: "Domingo",
        icone: Icons.thunderstorm,
        tmin: 19,
        tmax: 26,
      ),
      PrevisaoDia(dia: "Segunda-feira", icone: Icons.cloud, tmin: 18, tmax: 25),
    ],
  ),
  Clima(
    cidade: "Rio de Janeiro",
    imagem: "https://picsum.photos/id/1016/600/400",
    icone: Icons.wb_sunny,
    condicao: "Ensolarado e quente",
    temperaturaAtual: 31,
    temperaturaMinima: 24,
    temperaturaMaxima: 34,
    umidade: 68,
    vento: 18,
    chuva: 20,
    manha: 27,
    tarde: 34,
    alertas: [
      Alerta(
        icone: Icons.wb_sunny,
        titulo: "Calor intenso",
        descricao: "Sensação térmica acima de 38°C entre 12h e 16h",
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: "11", nome: "Índice UV"),
      Indicador(icone: Icons.speed, valor: "1009 hPa", nome: "Pressão"),
      Indicador(icone: Icons.visibility, valor: "12 km", nome: "Visibilidade"),
      Indicador(
        icone: Icons.wb_twilight,
        valor: "05:08",
        nome: "Nascer do sol",
      ),
    ],
    previsao: [
      PrevisaoDia(
        dia: "Terça-feira",
        icone: Icons.wb_sunny,
        tmin: 24,
        tmax: 35,
      ),
      PrevisaoDia(
        dia: "Quarta-feira",
        icone: Icons.wb_sunny,
        tmin: 25,
        tmax: 36,
      ),
      PrevisaoDia(dia: "Quinta-feira", icone: Icons.cloud, tmin: 24, tmax: 33),
      PrevisaoDia(
        dia: "Sexta-feira",
        icone: Icons.thunderstorm,
        tmin: 23,
        tmax: 30,
      ),
      PrevisaoDia(dia: "Sábado", icone: Icons.cloud, tmin: 22, tmax: 29),
      PrevisaoDia(dia: "Domingo", icone: Icons.wb_sunny, tmin: 23, tmax: 31),
      PrevisaoDia(
        dia: "Segunda-feira",
        icone: Icons.wb_sunny,
        tmin: 24,
        tmax: 33,
      ),
    ],
  ),
  Clima(
    cidade: "Curitiba",
    imagem: "https://picsum.photos/id/1018/600/400",
    icone: Icons.thunderstorm,
    condicao: "Chuva e trovoadas isoladas",
    temperaturaAtual: 21,
    temperaturaMinima: 15,
    temperaturaMaxima: 25,
    umidade: 80,
    vento: 12,
    chuva: 70,
    manha: 17,
    tarde: 24,
    alertas: [
      Alerta(
        icone: Icons.thunderstorm,
        titulo: "Tempestade",
        descricao: "Risco de granizo no fim da tarde",
      ),
      Alerta(
        icone: Icons.ac_unit,
        titulo: "Queda de temperatura",
        descricao: "Frente fria chega na quinta-feira",
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: "5", nome: "Índice UV"),
      Indicador(icone: Icons.speed, valor: "1015 hPa", nome: "Pressão"),
      Indicador(icone: Icons.visibility, valor: "6 km", nome: "Visibilidade"),
      Indicador(
        icone: Icons.wb_twilight,
        valor: "05:34",
        nome: "Nascer do sol",
      ),
    ],
    previsao: [
      PrevisaoDia(
        dia: "Terça-feira",
        icone: Icons.thunderstorm,
        tmin: 15,
        tmax: 22,
      ),
      PrevisaoDia(dia: "Quarta-feira", icone: Icons.cloud, tmin: 14, tmax: 21),
      PrevisaoDia(dia: "Quinta-feira", icone: Icons.cloud, tmin: 11, tmax: 17),
      PrevisaoDia(dia: "Sexta-feira", icone: Icons.wb_sunny, tmin: 9, tmax: 18),
      PrevisaoDia(dia: "Sábado", icone: Icons.wb_sunny, tmin: 10, tmax: 22),
      PrevisaoDia(dia: "Domingo", icone: Icons.cloud, tmin: 13, tmax: 24),
      PrevisaoDia(
        dia: "Segunda-feira",
        icone: Icons.thunderstorm,
        tmin: 15,
        tmax: 23,
      ),
    ],
  ),
  Clima(
    cidade: "Porto Alegre",
    imagem: "https://picsum.photos/id/1019/600/400",
    icone: Icons.wb_cloudy,
    condicao: "Parcialmente nublado",
    temperaturaAtual: 26,
    temperaturaMinima: 18,
    temperaturaMaxima: 30,
    umidade: 60,
    vento: 22,
    chuva: 40,
    manha: 21,
    tarde: 29,
    alertas: [
      Alerta(
        icone: Icons.air,
        titulo: "Ventania",
        descricao: "Rajadas de até 70 km/h na madrugada",
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: "8", nome: "Índice UV"),
      Indicador(icone: Icons.speed, valor: "1012 hPa", nome: "Pressão"),
      Indicador(icone: Icons.visibility, valor: "10 km", nome: "Visibilidade"),
      Indicador(
        icone: Icons.wb_twilight,
        valor: "05:20",
        nome: "Nascer do sol",
      ),
    ],
    previsao: [
      PrevisaoDia(
        dia: "Terça-feira",
        icone: Icons.wb_cloudy,
        tmin: 19,
        tmax: 29,
      ),
      PrevisaoDia(
        dia: "Quarta-feira",
        icone: Icons.thunderstorm,
        tmin: 18,
        tmax: 26,
      ),
      PrevisaoDia(
        dia: "Quinta-feira",
        icone: Icons.thunderstorm,
        tmin: 16,
        tmax: 22,
      ),
      PrevisaoDia(dia: "Sexta-feira", icone: Icons.cloud, tmin: 13, tmax: 20),
      PrevisaoDia(dia: "Sábado", icone: Icons.wb_sunny, tmin: 12, tmax: 23),
      PrevisaoDia(dia: "Domingo", icone: Icons.wb_sunny, tmin: 14, tmax: 27),
      PrevisaoDia(
        dia: "Segunda-feira",
        icone: Icons.wb_cloudy,
        tmin: 17,
        tmax: 29,
      ),
    ],
  ),
];
