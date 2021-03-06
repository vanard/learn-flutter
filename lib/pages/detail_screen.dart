import 'package:flutter/material.dart';
import 'package:flutter_learn_getx/pages/home/home_controller.dart';
import 'package:flutter_learn_getx/service/dummy_service.dart';
import 'package:get/get.dart';

class DetailScreen extends GetView<HomeController> {
  final serv = Get.find<ApiService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('${serv.fetchFromApi()} with count: ${controller.count}'),
      ),
    );
  }
}
