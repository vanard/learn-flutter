import 'package:flutter/material.dart';
import 'package:flutter_learn_getx/data/supa_manager.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final supaManager = Get.find<SupaManager>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await supaManager.signUpUser('vanard@vanard.com', 'test123');
                  Get.offNamed('/home');
                },
                child: Text('Sign Up')),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                onPressed: () async {
                  await supaManager.signInUser('vanard@vanard.com', 'test123');
                  Get.offNamed('/home');
                },
                child: Text('Sign In')),
          ],
        ),
      ),
    );
  }
}
