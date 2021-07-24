import 'package:flutter/material.dart';
import 'package:flutter_learn_getx/detail_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              'This is home screen',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextButton(
              onPressed: () {
                Get.to(DetailScreen());
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
