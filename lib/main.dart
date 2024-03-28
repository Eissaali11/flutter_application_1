import 'package:flutter/material.dart';
import 'package:flutter_application_1/testapp.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      locale: const Locale("ar"),
      home: MyApp(),
    );
  }
}
