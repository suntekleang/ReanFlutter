import 'package:get/get.dart';
import 'package:weatherflutter/Model/User.dart';
import 'package:weatherflutter/Service/data.service.dart';

class UserController extends GetxController {
  var dataUser = <Datum>[].obs;
  fetchUser(int page) async {
    final doc = User.fromJson((await getUser(page)).data);
    this.dataUser = RxList(doc.data);
  }
}
