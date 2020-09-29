import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    http.Response response = await http.get(
        'api.openweathermap.org/data/2.5/weather?lat=21.170240&lon=72.831062&appid=45f0646e1c1bab32e631080110444d71');
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
