import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('AliceNetBackend',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:
      Row(
        children: [
          Flexible(
              flex:2,
              child: Container(color: Colors.red,)),
          Flexible(
              flex:9,
              child: Container(color: Colors.blue,)),
        ],
      ),
    );

  }
}
