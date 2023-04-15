import 'package:flutter/material.dart';
import 'package:flutter_calculator/splash.dart';
import 'package:get/get.dart';
import '../bindings/my_bindings.dart';
import '../screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      title: "Calculator",
      home: Splash(),
    );
  }
}



// flutter run -d chrome