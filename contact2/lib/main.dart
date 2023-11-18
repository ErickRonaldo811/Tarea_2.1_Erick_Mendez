import 'package:contact2/home_page.dart';
import 'package:flutter/material.dart';
import 'package:contact2/routes.dart';
 


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),

       initialRoute: Routes.inicio.name,
      routes: MyRoutes.routes,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(),
            body: Center(child: Text('La ruta ${settings.name} no existe')),
          ),
        );
      },
    );
  }
}