
import 'dart:convert';

import 'package:get/get.dart';
import 'dart:async';
import 'package:http/http.dart' as http ;
class datasetController extends GetxController{
  var dirList = [].obs;
  var fileNameList = [].obs;
  var  selectDir = 0.obs;
  var isLoading = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchApi();
  }

  void fetchApi()async{
    isLoading(true);
    dirList.value = await datasetApi.getDir();
    for(var i =0;i<dirList.length;i++){
      fileNameList.add(await datasetApi.getfileName(dirList[i]));
      isLoading(false);
    }
  }

  changeSelectDir(int s){
    selectDir.value = s;
  }
  
}


class datasetApi {
   static Future<List> getDir() async {
    final response = await http.get(
      Uri.http('218.173.141.248:8090', 'dataset/getDir/',),
    );
    var r = jsonDecode(response.body);
    return r['value'];
  }

   static Future<List> getfileName(String dirName) async {
     final response = await http.get(
       Uri.http('218.173.141.248:8090', 'dataset/getfileName/',{'dirName':'${dirName}'}),
     );
     var r = jsonDecode(response.body);
     return r['value'];
   }

   static String createDownloadFileUrl(String dir,String fileName){
     String url = "http://218.173.141.248:8090/dataset/download/${dir}/${fileName}";
     return url;
   }

}