import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialToute = 'home';

  //Lista de tipo menu options
  static final menuOptions = <MenuOptions>[
    //TODO: Borrar home
    MenuOptions(route: 'home', icon: Icons.home, name: 'Home Screen', screen: const HomeScreen()),
    MenuOptions(route: 'listview1', icon: Icons.rocket_launch, name: 'Solar System Screen', screen: const ListView1Screen()),
    MenuOptions(route: 'listview2', icon: Icons.list, name: 'ListView 2 Screen', screen: const ListView2Screen()),
    MenuOptions(route: 'alert', icon: Icons.alarm, name: 'Alerts Screen', screen: const AlertScreen()),
    MenuOptions(route: 'card', icon: Icons.credit_card, name: 'Cards Screen', screen: const CardScreen()),
  ];

  //Para formar todas las rutas en base al modelo que tenemos 
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen}); //Aqui formamos lo mismo que tenemos en ***
    }
    return appRoutes;
  }

  //***
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home'     :(BuildContext context) => const HomeScreen(),
  //       'listview1':(BuildContext context) => const ListView1Screen(),
  //       'listview2':(BuildContext context) => const ListView2Screen(),
  //       'alert'    :(BuildContext context) => const AlertScreen(),
  //       'card'     :(BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings settings){
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
  }
}
