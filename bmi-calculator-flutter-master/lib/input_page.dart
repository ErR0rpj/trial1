import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ResuableCardContainer.dart';
import 'CardContent.dart';

const double bottombarHeight = 80.0;
const int cardFlex = 6;
const int bottomBarFlex = 2;
const Color cardColor_clicked = Color(0xFF1D1E33);
const Color cardColor_unclicked = Color(0xFF111328);
const int bottomBarColor = 0xFFEB1555;
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: cardFlex,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    bgcolor: selectedGender == Gender.male
                        ? cardColor_clicked
                        : cardColor_unclicked,
                    cardChild: CardContent(
                      cardText: 'MALE',
                      cardIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    bgcolor: selectedGender == Gender.female
                        ? cardColor_clicked
                        : cardColor_unclicked,
                    cardChild: CardContent(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: cardFlex,
            child: ReusableCardContainer(
              bgcolor: cardColor_clicked,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Slider(value: null, onChanged: null)
                ],
              ),
            ),
          ),
          Expanded(
            flex: cardFlex,
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
          Expanded(
            flex: bottomBarFlex,
            child: Container(
              color: Color(bottomBarColor),
              margin: EdgeInsets.only(top: 5),
              height: bottombarHeight,
            ),
          ),
        ],
      ),
    );
  }
}
