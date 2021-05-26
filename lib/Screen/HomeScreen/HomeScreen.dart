import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/HomeHeader.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
        elevation: 0,
        title: Text(""),
      ),
      body: Container(
          alignment: Alignment.centerLeft,
          child: Column(children: [
            HomeHeader(),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )),
            Container(
                child: RawMaterialButton(
              onPressed: () => Get.toNamed("/about"),
              child: Text("to About Screen"),
            )),
            Container(
                child: RawMaterialButton(
              onPressed: () => Get.toNamed("/category"),
              child: Text("to Category Screen"),
            )),
            Row(
              children: [Text("hello world"), Text("more row")],
            )
          ])),
    );
  }
}
