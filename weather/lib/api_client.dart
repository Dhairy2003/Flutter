import "dart:convert";

import "package:http/http.dart" as http;
import "package:weather/model.dart";


class WeatherApiclient{
Future<Weather>? getCurrentweather(String? location) async{
  var endpoint = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=Bhopal&appid=a587c6115f9df6ebfe40e5125d18711a&units=metric");

  var resposne = await http.get (endpoint);
  var body = jsonDecode(resposne.body);
  print(Weather.fromJson(body));
  return Weather.fromJson(body);
}
}