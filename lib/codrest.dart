import 'package:flutter/material.dart';
import 'package:flutter_application_1/newpassword.dart';

class codrestpass extends StatelessWidget {
  const codrestpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            maxLength: 6,
            decoration: InputDecoration(
                labelText: "OTP",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const newpassword()),
                );
              },
              child: const Text("SEND")),
        ],
      ),
    );
  }
}
