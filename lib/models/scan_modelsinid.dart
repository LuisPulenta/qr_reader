import 'dart:convert';

class ScanModelSinId {
  ScanModelSinId({
    this.tipo = '',
    required this.valor,
  }) {
    if (valor.contains('http')) {
      tipo = 'http';
    } else {
      tipo = 'geo';
    }
  }

  String tipo;
  String valor;

  factory ScanModelSinId.fromJson(Map<String, dynamic> json) => ScanModelSinId(
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "tipo": tipo,
        "valor": valor,
      };
}

ScanModelSinId scanModeFromJson(String str) =>
    ScanModelSinId.fromJson(json.decode(str));

String scanModeToJson(ScanModelSinId data) => json.encode(data.toJson());
