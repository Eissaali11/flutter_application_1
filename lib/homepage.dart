// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/faile.dart';
import 'package:flutter_application_1/forgetpassword.dart';
import 'package:flutter_application_1/sinup.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  GlobalKey<FormState> formky = GlobalKey();
  TextEditingController nubarcontroller = TextEditingController();
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 159,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/C4D0BAQF52ZE22Ht9XA/company-logo_200_200/0/1630560158974/rassaudi_logo?e=2147483647&v=beta&t=NyaRZI_DmwaqVW9khvshZ0cnV2Zu1KawH862Exxdbvw"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 350,
                    height: 450,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 233, 225, 225),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        key: formky,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 30,
                              width: 200,
                              decoration: const BoxDecoration(),
                              child: Container(
                                child: const Text(
                                  "Sin in",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                controller: nubarcontroller,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "هاذ الحقل ضروري ";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    labelText: "mail"),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 300,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "هاذ الحقل ضروري ";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    labelText: "pass"),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (formky.currentState!.validate()) {
                                  Get.to(
                                    () => Myfile(nubar: nubarcontroller.text),
                                  );
                                }
                              },
                              child: const Text("sin in"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 233, 225, 225)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const sinup()),
                                      );
                                    },
                                    child: const Text(
                                      "SIN UP",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 233, 225, 225)),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const forgetpassword()),
                                      );
                                    },
                                    child: const Text(
                                      "Forget password",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
