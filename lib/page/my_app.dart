import 'package:flutter/material.dart';
import 'package:flutter_app_weather/config/theme_custom.dart';
import 'package:flutter_app_weather/page/bottom_navigation_custom/bottom_custom.dart';
import 'package:flutter_app_weather/providers/weather_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeCustom.themeLight,
        home: //const MyHomePage(title: 'Flutter Demo Home Page'),
            const BottomNavigationCustom(),
      ),
    );
  }
}
