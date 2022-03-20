import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

class MapasPage extends StatefulWidget {
  const MapasPage({Key? key}) : super(key: key);

  @override
  State<MapasPage> createState() => _MapasPageState();
}

class _MapasPageState extends State<MapasPage> {
  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return ListView.builder(
      itemCount: scans.length,
      itemBuilder: (_, i) => ListTile(
        leading: Icon(
          Icons.map,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(scans[i].valor),
        subtitle: Text(scans[i].valor.toString()),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.grey,
        ),
        onTap: () {},
      ),
    );
  }
}
