

import 'package:alicenet_backend/constants/style.dart';
import 'package:alicenet_backend/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = VocabularyPageDisplayName.obs;
  var hoverItem = "".obs;


  changeActiveItem(@required String itemName){
      activeItem.value = itemName;
  }

  onHover(@required String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive( String itemName) =>activeItem.value == itemName;

  isHover( String itemName) => hoverItem.value = itemName;

  Widget reuturnIcon(String itemName){
    switch(itemName){
      case VocabularyPageDisplayName:
        return _customIcon(FontAwesomeIcons.font, itemName);
      case GrammerCorrectionPageDisplayName:
        return _customIcon(FontAwesomeIcons.font, itemName);
      case MinimalPairPageDisplayName:
        return _customIcon(FontAwesomeIcons.font, itemName);
      case DatasetPageDisplayName:
        return _customIcon(FontAwesomeIcons.font, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }
  Widget _customIcon(IconData icon,String itemName){
    if(isActive(itemName)) return Icon(icon,size: 22,color: dark,);

    return Icon(icon,color: isHover(itemName) ? dark : lightGrey,);
  }
}