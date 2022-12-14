import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Controller/Screen1Controller.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});
  Data datacontroller = Get.put(Data());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GetBuilder<Data>(builder: (_) {
            return Column(
              children: [
                Text(datacontroller.Data2[0].title.toString()),
                Text(datacontroller.Data1[0].email.toString()),
              ],
            );
          }),
          ElevatedButton(
              onPressed: () {
                
                datacontroller.update();
              },
              child: Text("Data"))
        ],
      ),
    );
  }
}
