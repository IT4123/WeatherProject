import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeDetaiWeather extends StatelessWidget {
  HomeDetaiWeather(
      {super.key, required this.windspeed, required this.humidity});

  num windspeed;
  num humidity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset('assets/images/icon/Vector.png'),
            Text(
              '${windspeed}km/h',
              style: const TextStyle(color: Colors.white, fontSize: 21),
            )
          ],
        ),
        Column(
          children: [
            Image.asset('assets/images/icon/humidity.png'),
            Text(
              '$humidity%',
              style: const TextStyle(color: Colors.white, fontSize: 21),
            )
          ],
        ),
      ],
    );
  }
}
