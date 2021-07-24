import 'package:flutter/material.dart';
import 'package:flutter_learn_getx/pages/home/home_controller.dart';
import 'package:flutter_learn_getx/service/dummy_service.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final service = Get.find<ApiService>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is home screen with ${service.fetchFromApi()}',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/detail');
              },
              child: Text('Go to detail'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(16.0),
                backgroundColor: Colors.black,
                primary: Colors.white,
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
            controller.increment();
          },
          label: Text('Count ${controller.count}'),
          icon: const Icon(Icons.plus_one),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
