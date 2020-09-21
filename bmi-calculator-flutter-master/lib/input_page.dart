import 'package:flutter/material.dart';

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
                  child: ReusableBoxContainer(bgcolor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableBoxContainer(bgcolor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableBoxContainer(bgcolor: Color(0xFF1D1E33)),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ReusableBoxContainer(bgcolor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableBoxContainer(bgcolor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableBoxContainer extends StatelessWidget {
  Color bgcolor;

  ReusableBoxContainer({@required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
