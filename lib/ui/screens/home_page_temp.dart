import 'package:componentes/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  /*Recuperacion de datos de un archivo json
  print(menuProvider.opciones);
  menuProvider.loadData().then((opciones) {
    print('_lista: ');
    print(opciones);
  });*/
  return FutureBuilder(
    future: menuProvider.loadData(), //indicando lo que queremos esperar
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      print('builder: ');
      print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data) {
  final List<Widget> opciones = [];
  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: const Icon(
        Icons.account_box,
        color: Colors.blueAccent,
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blue,
      ),
      subtitle: Text(opt['texto2']),
      onTap: () {},
    );
    opciones
      ..add(tile)
      ..add(const Divider());
  });
  return opciones;
  // return const [
  //   ListTile(
  //     title: Text('Real Madrid Campeones de la Champions League♥️'),
  //     subtitle: Text('90 min en el Santiago Bernabeu son Monto Longo♥️'),
  //   ),
  //   Divider(
  //     thickness: 1.5,
  //     color: Color.fromARGB(255, 226, 2, 2),
  //   ),
  //   ListTile(
  //     title: Text('Cristiano Ronaldo'),
  //     subtitle: Text('Leyenda del Real con 467 Goles'),
  //   ),
  //   Divider(
  //     thickness: 1.5,
  //     color: Color.fromARGB(255, 8, 16, 233),
  //   ),
  //   ListTile(
  //     title: Text('Karim Benzema'),
  //     subtitle: Text('Ganador del Balon de Oro'),
  //   ),
  // ];
}
