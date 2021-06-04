import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherflutter/Controller/product.controller.dart';
import 'package:weatherflutter/Screen/HomeScreen/components/HomeHeader.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<CategoryScreen> {
  ProductController productController = Get.put(ProductController());

  @override
  void initState() {
    productController.getData();
    productController.getDataNoSnapShot();
  }

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
            )),
            Obx(() {
              if (productController.loading.value)
                return Center(
                  child: CircularProgressIndicator(),
                );
              return Column(
                children: List.generate(
                    productController.productList.value.length,
                    (index) => Container(
                          child: Column(
                            children: [
                              Text(
                                productController.productList.value[index].name,
                              ),
                              Text(productController
                                  .productList.value[index].price),
                              Image(
                                  image: NetworkImage(productController
                                      .productList.value[index].imageUrl))
                            ],
                          ),
                        )),
              );
            }),
            Obx(() {
              if (productController.loading.value)
                return Center(
                  child: CircularProgressIndicator(),
                );
              return Column(
                children: List.generate(
                    productController.productNoSnapShotList.value.length,
                    (index) => Container(
                          child: Column(
                            children: [
                              Text(
                                productController
                                    .productNoSnapShotList.value[index].name,
                              ),
                              Text(productController
                                  .productNoSnapShotList.value[index].price),
                              Image(
                                  image: NetworkImage(productController
                                      .productNoSnapShotList
                                      .value[index]
                                      .imageUrl))
                            ],
                          ),
                        )),
              );
            })
          ])),
    );
  }
}
