import 'package:alicenet_backend/controllers/data_controller.dart';
import 'package:alicenet_backend/controllers/dataset_controller.dart';
import 'package:alicenet_backend/controllers/menu_controller.dart';
import 'package:alicenet_backend/layout.dart';
import 'package:alicenet_backend/page/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  final MenuController menuController = Get.put(MenuController());
  final dataController d = Get.put(dataController());
  final datasetController w = Get.put(datasetController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AliceNet_backend',
      debugShowCheckedModeBanner: false,
      home: SiteLayout(),
    );
  }
}
