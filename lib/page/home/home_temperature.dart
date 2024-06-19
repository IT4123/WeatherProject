import 'package:flutter/material.dart';
import 'package:flutter_app_weather/apps/utils/const.dart';

// ignore: must_be_immutable
class HomeTemperature extends StatelessWidget {
  HomeTemperature({super.key, required this.temp});

  num temp;

  @override
  Widget build(BuildContext context) {
    return NhietDo.nhietDo(temp.toString(), 100, 36);
  }
}
