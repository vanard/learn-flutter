import 'package:flutter/material.dart';
import 'package:flutter_learn_getx/pages/detail_screen.dart';
import 'package:flutter_learn_getx/service/dummy_service.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final service = Get.put(ApiService());

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
            )
          ],
        ),
      ),
    );
  }
}
