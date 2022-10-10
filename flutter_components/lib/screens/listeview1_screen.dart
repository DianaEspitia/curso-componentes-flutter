import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final planets = const ["Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno"];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema Solar 1"),
      ),
      body: ListView(
        children:[
          ...planets.map((options) => ListTile(
            //leading: const Icon(Icons.rocket_launch), //si queremos agregar un icono al inicio
            trailing: const Icon(Icons.arrow_forward_ios),
            title: Text(options),
          )
        ).toList()
        ],
      ),
    );
  }
}