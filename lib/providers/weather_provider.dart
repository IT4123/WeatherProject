import 'package:flutter/material.dart';
import 'package:flutter_app_weather/models/weather.dart';
import 'package:flutter_app_weather/reponsitories/api_reponsitory.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiReponsitory.callApiGetWeather();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherDetail() async {
    List<WeatherDetail> result = await ApiReponsitory.callApiGetWeatherDetail();
    return result;
  }
}
