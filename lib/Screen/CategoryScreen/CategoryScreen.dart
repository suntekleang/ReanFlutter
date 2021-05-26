import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherflutter/Screen/HomeScreen/components/HomeHeader.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<CategoryScreen> {
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
        color: Colors.blue,
          child: Column(children: [
        HomeHeader(),
        Text("Hello"),
        Container(
            child: RawMaterialButton(
          onPressed: () => Get.back(),
          child: Text("back"),
        ))
      ])),
    );
  }
}
