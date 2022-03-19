import 'dart:convert';

class ScanMode {
  ScanMode({
    required this.id,
    required this.tipo,
    required this.valor,
  }) {
    if (tipo.contains('http')) {
      tipo = 'http';
    } else {
      tipo = 'geo';
    }
  }

  int id;
  String tipo;
  String valor;

  factory ScanMode.fromJson(Map<String, dynamic> json) => ScanMode(
        id: json["id"],
        tipo: json["tipo"],
        valor: json["valor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tipo": tipo,
        "valor": valor,
      };
}

ScanMode scanModeFromJson(String str) => ScanMode.fromJson(json.decode(str));

String scanModeToJson(ScanMode data) => json.encode(data.toJson());
