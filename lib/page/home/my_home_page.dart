import 'package:flutter/material.dart';
import 'package:flutter_app_weather/models/weather.dart';
import 'package:flutter_app_weather/page/home/home_detai_weather.dart';
import 'package:flutter_app_weather/page/home/home_location.dart';
import 'package:flutter_app_weather/page/home/home_temperature.dart';
import 'package:flutter_app_weather/page/home/home_weather_icon.dart';
import 'package:flutter_app_weather/providers/weather_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    context.read<WeatherProvider>().getWeatherCurrent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff1C71EF),
              Color(0xff19D2FE),
            ])),
        alignment: Alignment.center,
        child: FutureBuilder(
            future: context.read<WeatherProvider>().getWeatherCurrent(),
            initialData: null,
            builder: (BuildContext context, AsyncSnapshot snapShot) {
              if (snapShot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (!snapShot.hasData) {
                return Container(
                  child: const Text('no data'),
                );
              }

              WeatherData weatherData = snapShot.data as WeatherData;

              print(weatherData.weather[0].main);

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeWeatherIcon(nameIcon: weatherData.weather[0].main),
                  HomeTemperature(temp: weatherData.main.temp),
                  HomeLocation(
                    location: weatherData.name,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  HomeDetaiWeather(
                    windspeed: weatherData.wind.speed,
                    humidity: weatherData.main.humidity,
                  )
                ],
              );
            }),
      ),
    );
  }
}
