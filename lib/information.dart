import 'package:flutter/material.dart';

class information extends StatelessWidget {
  const information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("سجل السيارة "),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "بحث",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 222, 215, 11),
                    blurRadius: 4,
                    spreadRadius: 2,
                    offset: Offset(0, 1)),
                BoxShadow(
                    color: Color.fromARGB(255, 229, 92, 92),
                    blurRadius: 4,
                    spreadRadius: 2,
                    offset: Offset(0, 1)),
                BoxShadow(
                    color: Color.fromARGB(255, 27, 26, 26),
                    blurRadius: 4,
                    spreadRadius: 2,
                    offset: Offset(0, 1)),
              ],
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
