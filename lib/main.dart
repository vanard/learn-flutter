import 'package:flutter/material.dart';
import 'package:flutter_learn_getx/pages/detail_screen.dart';
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
        GetPage(name: '/home', page: ()=> HomeScreen()),
        GetPage(name: '/detail', page: ()=> DetailScreen()),
      ],
      initialRoute: '/home',
    );
  }
}

