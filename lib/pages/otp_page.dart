import 'package:firebase/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/auth_with_number.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});
  @override
  Widget build(BuildContext context) {
    authWithNumber controller = Get.put(authWithNumber());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset("assets/images/otp.png"),
                Row(
                  children: const [
                    Text(
                      "Enter OTP",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: const [
                    Flexible(
                      child: Text(
                        "Please enter  OTP code sended on your mobile number",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                          controller: controller.otp,
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.deepPurple.shade100,
                            filled: true,
                            hintText: "OTP CODE",
                          )),
                    )
                  ],
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                  controller.verifyMobilerNumber();
                  },
                  child: Text("DONE"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
