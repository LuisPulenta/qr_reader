import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/scan_model.dart';

void launchURL(BuildContext context, ScanModel scan) async {
  final url = scan.valor;

  if (scan.tipo == 'http') {
    if (!await launch(url)) throw 'No se puede abrir la web $url';
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
