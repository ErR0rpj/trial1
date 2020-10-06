import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper();

  static const String apiKey = 'e659f1987ab784b45dec6538f523fc7a';
  static const String openWeatherURL =
      'http://api.openweathermap.org/data/2.5/weather';

  Future<dynamic> getData(double latitude, double longitude) async {
    http.Response response = await http.get(
        '$openWeatherURL?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');
    var decodedData;

    if (response.statusCode == 200) {
      String rawData = response.body;

      decodedData = jsonDecode(rawData);
      return decodedData;
    } else {
      print('Something went wrong: ' + response.statusCode.toString());
      return decodedData;
    }
  }
}
