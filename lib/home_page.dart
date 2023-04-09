import 'package:firebase/controller/auth_with_number.dart';
import 'package:firebase/pages/sing_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'controller/auth_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    authWithNumber controller = Get.put(authWithNumber());
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(SingupPage());
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset("assets/images/home.png"),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      size: 70,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Name"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Ansd@gmail.com"),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Obx(
                            () => Text(
                              controller.userMobilerNumber.toString(),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  controller.logoutUser();
                },
                child: Text("LOGOUT"),
              )
            ],
          ),
        ));
  }
}
