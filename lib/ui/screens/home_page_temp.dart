import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Real Madrid Campeones de la Champions League♥️'),
            subtitle: Text('90 min en el Santiago Bernabeu son Monto Longo♥️'),
          ),
          Divider(
            thickness: 1.5,
            color: Color.fromARGB(255, 226, 2, 2),
          ),
          ListTile(
            title: Text('Cristiano Ronaldo'),
            subtitle: Text('Leyenda del Real con 467 Goles'),
          ),
          Divider(
            thickness: 1.5,
            color: Color.fromARGB(255, 8, 16, 233),
          ),
          ListTile(
            title: Text('Karim Benzema'),
            subtitle: Text('Ganador del Balon de Oro'),
          ),
        ],
      ),
    );
  }
}
