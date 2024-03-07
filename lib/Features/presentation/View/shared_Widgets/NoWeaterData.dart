
import 'package:flutter/material.dart';

class NoWeaterData extends StatelessWidget {
  const NoWeaterData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text("There is no weather 😔 , start searching now:",style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    );
  }
}


