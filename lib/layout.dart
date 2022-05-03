import 'package:alicenet_backend/hellpers/responsiveLayout.dart';
import 'package:alicenet_backend/widgets/large_layout.dart';
import 'package:alicenet_backend/widgets/side_menu.dart';
import 'package:alicenet_backend/widgets/small_layout.dart';
import 'package:alicenet_backend/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey  = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: TopNavigationBar(context, scaffoldkey),
      drawer:Drawer(child: SideMenu(),),
      body:ResponsiveLayout(largeScreen: LargeLayout(),mediumScreen: LargeLayout(),smallScreen: SmallLayout(),)
    );
  }
}

