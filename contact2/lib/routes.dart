import 'package:contact2/home_page.dart';
import 'package:contact2/info_contact.dart';
import 'package:contact2/add.dart';
import 'package:flutter/material.dart';

//enumarate
enum Routes { info, inicio,  add }

class MyRoutes {
  static final routes = {
    Routes.info.name: (BuildContext context) =>  const Informacion(),
    Routes.inicio.name: (BuildContext context) =>  HomePage(),
    Routes.add.name: (BuildContext context) =>   Add()
  
  
  };
}