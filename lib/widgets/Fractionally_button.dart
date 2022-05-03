import 'package:alicenet_backend/constants/style.dart';
import 'package:flutter/material.dart';

class FractionallyButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  const FractionallyButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 1,
        child: TextButton(
            onPressed: onTap,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18,bottom: 10),
                  child: Text("－ "+title,
                    style: TextStyle(color: dark,fontSize: 15),
                  ),
                )
              ],
            )));
  }
}
