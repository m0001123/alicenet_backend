import 'package:alicenet_backend/page/data.dart';
import 'package:alicenet_backend/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeLayout extends StatelessWidget {
     const LargeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: SideMenu()),
        Flexible(
            flex:5,
            child: dataPage()),
      ],
    );
  }
}
