import 'package:alicenet_backend/constants/style.dart';
import 'package:alicenet_backend/hellpers/responsiveLayout.dart';
import 'package:flutter/material.dart';

AppBar TopNavigationBar(BuildContext context,  GlobalKey<ScaffoldState> key) => AppBar(
      leading: ResponsiveLayout.isSmallScreen(context)
          ? IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ),
            )
          : Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Image.asset("images/dashboard.png",width: 28,),
                  )
                ],

      ),
      elevation: 0,
      backgroundColor: light,
      title: Row(
        children: [
          Text("Dash",style: TextStyle(color: lightGrey,fontSize: 20,fontWeight: FontWeight.bold),),
          Expanded(child: Container()),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: dark.withOpacity(.9),)),
        ],
      ),
    );
