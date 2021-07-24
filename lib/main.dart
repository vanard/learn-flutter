import 'package:flutter/material.dart';
import 'package:flutter_learn_getx/pages/detail_screen.dart';
import 'package:flutter_learn_getx/pages/home/home_binding.dart';
import 'package:flutter_learn_getx/pages/login/login_screen.dart';
import 'package:get/get.dart';

import 'pages/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: '/home', page: ()=> HomeScreen(), binding: HomeBinding()),
        GetPage(name: '/detail', page: ()=> DetailScreen(), transition: Transition.cupertino),
        GetPage(name: '/login', page: ()=> LoginScreen(), transition: Transition.cupertino),
      ],
      initialRoute: '/home',
    );
  }
}

