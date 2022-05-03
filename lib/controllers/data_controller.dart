

import 'package:get/get.dart';

class dataController extends GetxController{
  var title = "456".obs;

  changeTitle(String a){
    title.value = a;
  }
}