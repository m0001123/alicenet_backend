import 'package:alicenet_backend/constants/style.dart';
import 'package:alicenet_backend/controllers/dataset_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controllers/data_controller.dart';
import '../hellpers/responsiveLayout.dart';
import 'Fractionally_button.dart';
import 'package:get/get.dart';
import '../controllers/dataset_controller.dart';
class SideMenu extends StatelessWidget {

  datasetController d = Get.find();
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: Column(
        children: [
          /*ExpansionTile(
            textColor: dark,
            collapsedTextColor: dark.withOpacity(0.7),
            leading: Icon(
              Icons.headset_mic_rounded,
            ),
            title: Text(
              "Listening & Speak",
              style: TextStyle(
                   fontWeight: FontWeight.bold, fontSize: 17),
            ),
            trailing: Text(""),
            children: [
              FractionallyButton(onTap: () {}, title: "Vocabulary Practice"),
              FractionallyButton(onTap: () {}, title: "Sentence Practice"),
            ],
          ),
          ExpansionTile(
            textColor: dark,
            collapsedTextColor: dark.withOpacity(0.7),
            leading: Icon(
              Icons.import_contacts_rounded,
            ),
            title: Text(
              "Reading & Writing",
              style: TextStyle(
                   fontWeight: FontWeight.bold, fontSize: 17),
            ),
            trailing: Text(""),
            children: [
              FractionallyButton(onTap: () {}, title: "Paragraph writing")
            ],
          ),
          ExpansionTile(
            textColor: dark,
            collapsedTextColor: dark.withOpacity(0.7),
            leading: Icon(
              Icons.graphic_eq_rounded,
            ),
            title: Text(
              "Pronunciation",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
            trailing: Text(""),
            children: [FractionallyButton(onTap: () {}, title: "Minimal Pair")],
          ),
          ExpansionTile(
            textColor: dark,
            collapsedTextColor: dark.withOpacity(0.7),
            leading: Icon(
              Icons.text_fields_rounded,
            ),
            title: Text(
              "Vocabulary",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
            trailing: Text(""),
            children: [
              FractionallyButton(onTap: () {}, title: "30K Dictionary")
            ],
          ),
          ExpansionTile(
            textColor: dark,
            collapsedTextColor: dark.withOpacity(0.7),
            leading: Icon(
              Icons.bug_report_rounded,
            ),
            title: Text(
              "Grammar",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
            trailing: Text(""),
            children: [
              FractionallyButton(onTap: () {}, title: "Grammar Correction")
            ],
          ),
          ExpansionTile(
            textColor: dark,
            collapsedTextColor: dark.withOpacity(0.7),
            leading: Icon(
              Icons.translate_rounded,
            ),
            title: Text(
              "Translate",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
            trailing: Text(""),
            children: [],
          ),*/
          Obx(()=>ExpansionTile(
            textColor: dark,
            collapsedTextColor: dark.withOpacity(0.7),
            leading: Icon(
              Icons.source_rounded,
            ),
            title: Text(
              "Dataset",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17),
            ),
            trailing: Text(""),
            children: [
              for(var i =0;i<d.dirList.length;i++)
                FractionallyButton(onTap: (){d.changeSelectDir(i);}, title: d.dirList[i])
            ],
          ),)
        ],
      ),
    );
  }
}
