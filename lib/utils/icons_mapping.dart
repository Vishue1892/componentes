import 'package:flutter/material.dart';

class IconMapping extends StatelessWidget {
  //definir mapa
  final _icons = const <String, IconData>{
    'add_alert': Icons.add_alert,
    'input': Icons.input,
    'folder_open': Icons.folder_open,
    'add_data': Icons.data_exploration,
    'list': Icons.list,
    'camera': Icons.camera_alt,
  };

  const IconMapping();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Icon getIcon(String iconName) {
    return Icon(
      _icons[iconName],
      color: Colors.indigoAccent,
    );
  }
}
