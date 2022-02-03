import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himu_shop/presentation/pages/splash/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/logos/logo.png'),
            ),
            SizedBox(
              height: 60,
            ),
            CircularProgressIndicator(color:Colors.red,)
          ],
        ),
      ),
    );
  }
}
