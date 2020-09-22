import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  final String cardText;
  final IconData cardIcon;

  CardContent({this.cardText, this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.cardIcon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.cardText,
          style: commonTextStyle(),
        ),
      ],
    );
  }
}
