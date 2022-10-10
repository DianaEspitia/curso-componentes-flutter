import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.computer, color: AppTheme.primaryColor,),
            title: Text("Soy un titulo"),
            subtitle: Text('Enim reprehenderit consectetur quis anim velit. Cillum Lorem occaecat ut esse esse nostrud minim adipisicing aliqua. Incididunt aute eu tempor eiusmod excepteur do proident.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text("OK")
                ),
          
              ],
            ),
          )
        ],
      )
    );
  }
}