//Results
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'ResuableCardContainer.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi, @required this.result, @required this.message});

  final String bmi;
  final String result;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YOUR RESULT'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Result Card
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ReusableCardContainer(
                    bgcolor: cardColor_clicked,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          result,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF24D867),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          bmi,
                          style: TextStyle(
                            fontSize: 65,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          message,
                          textAlign: TextAlign.center,
                          style: commonTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Re-CALCULATE',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    color: bottomBarColor,
                    margin: EdgeInsets.only(top: 5),
                    height: bottombarHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
