import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:weatherflutter/Model/Product.dart';

class ProductController extends GetxController {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  var productList = List<Product>.empty(growable: true).obs;
  var productNoSnapShotList = List<Product>.empty(growable: true).obs;
  var loading = true.obs;

  getData() {
    loading.value = true;
    Stream<QuerySnapshot> doc = firestore.collection("product").snapshots();
    doc.listen((event) {
      print(event.docs.length);
      productList.value = event.docs
          .map((doc) => Product(
              key: doc["key"],
              name: doc["name"],
              price: doc["price"],
              imageUrl: doc["imageUrl"])),
          .toList();
    });
    // print(productList.value.length);
    loading.value = false;
  }

  getDataNoSnapShot() async {
    loading.value = true;
    final doc = await firestore.collection("product").get();
    productNoSnapShotList.value = doc.docs
        .map((doc) => Product(
            key: doc["key"],
            name: doc["name"],
            price: doc["price"],
            imageUrl: doc["imageUrl"]))
        .toList();

    loading.value = false;
  }
}
