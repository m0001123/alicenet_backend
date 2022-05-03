import 'package:alicenet_backend/controllers/data_controller.dart';
import 'package:alicenet_backend/controllers/dataset_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class dataPage extends StatelessWidget {
  datasetController d = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Obx(() => d.isLoading.value
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: d.fileNameList[d.selectDir.value].length,
              itemBuilder: (context, index) {
                String s = d.fileNameList[d.selectDir.value][index];
                return ListTile(
                  leading: Text(
                    "${index + 1}",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: InkWell(
                      onTap: () async{
                        Uri url = Uri.parse(datasetApi.createDownloadFileUrl(d.dirList[d.selectDir.value], s));
                        if(await canLaunchUrl(url)){
                          launchUrl(url);
                        }else{
                          throw 'can not launch ${url}';
                        }
                      },
                      child: Text(
                        '${s}',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            decoration: TextDecoration.underline),
                      )),
                );
              })),
    );
  }
}
