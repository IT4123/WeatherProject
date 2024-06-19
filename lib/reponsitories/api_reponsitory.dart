import 'package:dio/dio.dart';
import 'package:flutter_app_weather/apps/utils/const.dart';
import 'package:flutter_app_weather/models/weather.dart';

class ApiReponsitory {
  static Future<WeatherData> callApiGetWeather() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/weather?lat=10,3711147&lon=105,3438403&units=metric&appid=${MyKey.api_token}');
      final data = res.data; //trả về kiểu map
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  static Future<List<WeatherDetail>> callApiGetWeatherDetail() async {
    try {
      final dio = Dio();
      final res = await dio.get(
          'https://api.openweathermap.org/data/2.5/forecast?lat=44.34&lon=10.99&units=metric&appid=${MyKey.api_token}');
      final data = res.data['list']; //trả về kiểu map
      List<WeatherDetail> result = List<WeatherDetail>.from(
          data.map((e) => WeatherDetail.fromMap(e)).toList());
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
