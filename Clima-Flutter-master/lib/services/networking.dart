import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper();

  static const apiKey = 'e659f1987ab784b45dec6538f523fc7a';

  Future getData(double latitude, double longitude) async {
    http.Response response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');

    if (response.statusCode == 200) {
      String rawData = response.body;

      var decodedData = jsonDecode(rawData);
      return decodedData;
    } else {
      print('Something went wrong: ' + response.statusCode.toString());
    }
  }
}
