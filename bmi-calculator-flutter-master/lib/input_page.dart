import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottombarHeight = 80.0;
const Color cardColor_clicked = Color(0xFF1D1E33);
const Color cardColor_unclicked = Color(0xFF111328);
const int bottomBarColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableCardContainer(
                      bgcolor: cardColor_unclicked,
                      cardChild: CardContent(
                        cardText: 'Male',
                        cardIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardContainer(
                    bgcolor: cardColor_unclicked,
                    cardChild: CardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCardContainer(bgcolor: cardColor_clicked),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardContainer(bgcolor: cardColor_clicked),
                ),
                Expanded(
                  child: ReusableCardContainer(bgcolor: cardColor_clicked),
                ),
              ],
            ),
          ),
          //This container may have bugs depeding upon the devices.
          Container(
            color: Color(bottomBarColor),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottombarHeight,
          ),
        ],
      ),
    );
  }
}

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
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCardContainer extends StatelessWidget {
  final Color bgcolor;
  final Widget cardChild;

  ReusableCardContainer({@required this.bgcolor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
