class Product {
  String key = "";
  String name = "";
  String price = "";
  String imageUrl = "";

  Product(
      {required this.key,
      required this.name,
      required this.price,
      required this.imageUrl});

  // MyModel.fromJson(Map<String, dynamic> json){
  //     this.id = json['id'];
  //     this.name = json['name'];
  // }

}
