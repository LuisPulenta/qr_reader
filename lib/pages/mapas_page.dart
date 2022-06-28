import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/widgets.dart';

class MapasPage extends StatefulWidget {
  const MapasPage({Key? key}) : super(key: key);

  @override
  State<MapasPage> createState() => _MapasPageState();
}

class _MapasPageState extends State<MapasPage> {
  @override
  Widget build(BuildContext context) {
    return const ScanTiles(
      tipo: 'geo',
    );
  }
}
