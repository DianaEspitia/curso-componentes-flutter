import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

  final planets = const ["Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno"];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 2",),
      ),
      body: ListView.separated(
        itemCount: planets.length,
        itemBuilder: (context, index) => ListTile(
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black87,),
          title: Text(planets[index]),
          onTap: (){},
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}