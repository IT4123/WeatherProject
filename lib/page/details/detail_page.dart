import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_weather/models/weather.dart';
import 'package:flutter_app_weather/page/details/detail_body.dart';
import 'package:flutter_app_weather/providers/weather_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff1C71EF),
            Color(0xff19D2FE),
          ])),
      child: FutureBuilder(
          future: context.read<WeatherProvider>().getWeatherDetail(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            List<WeatherDetail> listDataWeather =
                snapshot.data as List<WeatherDetail>;

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: false,
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(CupertinoIcons.location),
                    const SizedBox(
                      width: 10,
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText('Long Xuyen City',
                            speed: const Duration(milliseconds: 100))
                      ],
                    )
                  ],
                ),
                actions: const [
                  Icon(
                    Icons.search,
                    size: 24,
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              body: const DetailBody(),
            );
          }),
    );
  }
}
