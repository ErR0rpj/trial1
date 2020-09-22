import 'package:flutter/material.dart';

class ReusableCardContainer extends StatelessWidget {
  final Color bgcolor;
  final Widget cardChild;
  final Function onPress;

  ReusableCardContainer({@required this.bgcolor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
