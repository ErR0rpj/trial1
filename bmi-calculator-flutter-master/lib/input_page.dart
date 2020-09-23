import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ResuableCardContainer.dart';
import 'CardContent.dart';

Gender selectedGender;
int height = 150;
int weight = 62;
int age = 25;
const double bottombarHeight = 80.0;
const int cardFlex = 6;
const int bottomBarFlex = 2;
const Color cardColor_clicked = Color(0xFF1D1E33);
const Color cardColor_unclicked = Color(0xFF111328);
const Color bottomBarColor = Color(0xFFEB1555);
enum Gender {
  male,
  female,
}

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Genders Cards
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
          //Height Card
          Expanded(
            flex: cardFlex,
            child: ReusableCardContainer(
              bgcolor: cardColor_clicked,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: commonTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: commonIconStyle,
                      ),
                      Text(
                        'cm',
                        style: commonTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: min_height,
                    max: max_height,
                    activeColor: bottomBarColor,
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newHeight) {
                      setState(() {
                        height = newHeight.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          //Weight and age cards
          Expanded(
            flex: cardFlex,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardContainer(
                    bgcolor: cardColor_clicked,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: commonTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: commonIconStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              onPressed: () {
                                setState(() {
                                  if (weight > 10) weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundButton(
                              onPressed: () {
                                setState(() {
                                  if (weight < 180) weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardContainer(
                    bgcolor: cardColor_clicked,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: commonTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: commonIconStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              onPressed: () {
                                setState(() {
                                  if (age > 1) age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            RoundButton(
                              onPressed: () {
                                setState(() {
                                  if (age < 120) age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Bottom bar. This container may have bugs depeding upon the devices.
          Expanded(
            flex: bottomBarFlex,
            child: Container(
              color: bottomBarColor,
              margin: EdgeInsets.only(top: 5),
              height: bottombarHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundButton({this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
