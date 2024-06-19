import 'package:flutter/material.dart';
import 'package:flutter_app_weather/apps/utils/const.dart';

// ignore: must_be_immutable
class HomeWeatherIcon extends StatelessWidget {
  HomeWeatherIcon({super.key, required this.nameIcon});
  String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    nameIcon.toLowerCase();
    //nameIcon.
    return Container(
      width: size.width / 1.5,
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        AssetCustom.getLinkImg(nameIcon),
        fit: BoxFit.cover,
      ),
    );
  }
}
