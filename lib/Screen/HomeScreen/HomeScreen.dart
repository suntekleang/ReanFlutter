import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherflutter/Controller/User.controller.dart';

import 'components/HomeHeader.dart';
import 'components/HomeSwiper.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<HomeScreen> {
  UserController userController = Get.put(UserController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userController.fetchUser(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 0,
        elevation: 0,
        title: Text(""),
      ),
      body: Container(
          alignment: Alignment.centerLeft,
          child: Column(children: [
            HomeHeader(),
            HomeSwiper(),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green,
                      ),
                      width: (Get.width - 45) / 2,
                      child: RawMaterialButton(
                        onPressed: () => Get.toNamed("/about"),
                        child: Text(
                          "About",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green,
                      ),
                      width: (Get.width - 45) / 2,
                      child: RawMaterialButton(
                        onPressed: () => Get.toNamed("/category"),
                        child: Text(
                          "Category",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ],
              ),
            ),
            Obx(() {
              return Container(
                  child: Expanded(
                      child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      userController.dataUser.value.length,
                      (index) => Container(
                        height: 100,
                              child: Column(
                            children: [
                              Text(userController.dataUser[index].firstName),
                              Text(userController.dataUser[index].lastName)
                            ],
                          ))),
                ),
              )));
            })
          ])),
    );
  }
}
