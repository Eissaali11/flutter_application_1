import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/informationcar.dart';
import 'package:flutter_application_1/testappmodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Porodctsmodl> products = [];
  Porodctsmodl? product;

  @override
  void initState() {
    super.initState();
    fetchProductsData();
  }

  void fetchProductsData() async {
    var url = Uri.parse('https://fakestoreapi.com/products');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      for (var element in data) {
        product = Porodctsmodl.fromJson(element);
        setState(() {
          products.add(product!);
        });
      }
    } else {
      print('حدث خطأ أثناء جلب البيانات. الكود: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('مثال على صفحة Flutter'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.to(() {
                  return informationcar(
                    porodctsmodl: products[index],
                  );
                });
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal,
                ),
                child: ListTile(
                  leading: Image.network(products[index].image!),
                  title: Text(products[index].title!),
                  subtitle: Text('\$${products[index].price!}'),
                  trailing: Container(
                      width: 200,
                      height: 300,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Text(products[index].description!)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
