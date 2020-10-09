import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static final String id = 'welcome';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

//SingleTickerProviderStateMixin makes this stateful widget to have a ticker for one animation.
//For more than one there is another one.
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    //This defines the properties for the animation controller.
    //vsync determines which ticker to use (here this).
    //This controller can also use to create loading percentage.
    //Animation controller changes its value from 0.0 to 1 (default, can be changed)
    //within the duration (here 1 sec) defined above. Range can be change with
    //Upperbound and lowerBound properties while initializing the controller.
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    //We can also make our values of controller to move along a curve with
    //CurvedAnimation. If we use this curved animation then the upperbound needs
    //to be 1 becuase curves are drawn within 1.
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);

    //This starts the animation controller.
    controller.forward();
    //The listener helps us detect the controller values. We can use these values to change the properties in
    //our widgets like opacity, etc. But to make the change happen we need to add the setState inside the
    //listener.
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: animation.value * 100,
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              label: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              color: Colors.blueAccent,
              label: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
