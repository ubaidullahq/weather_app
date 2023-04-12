import 'package:dio/dio.dart';

final dio = Dio();

class BackEndRequests {
  static Future<Response> getCountriesCapital() async {
    var response = await dio.get('https://restcountries.com/v3.1/all');

    return response;
  }

  static Future<Response> getCapitalWeather(double lat, double long) async {
    var response =
        await dio.get('https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=2a63928ffc5d230c155fbafe5fbf779f');

    return response;
  }
}
