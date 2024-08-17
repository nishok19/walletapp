import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Icon
        Container(
          height: 90,
          // width: 60,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.white, blurRadius: 30, spreadRadius: 4)
              ]),
          child: Center(
            child: Image.asset(
              iconImagePath,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // Text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
