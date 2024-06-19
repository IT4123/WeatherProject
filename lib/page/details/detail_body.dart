import 'package:flutter/material.dart';
import 'package:flutter_app_weather/apps/utils/const.dart';
import 'package:flutter_app_weather/models/weather.dart';
import 'package:intl/intl.dart';

class DetailBody extends StatelessWidget {
  DetailBody({super.key, required this.listData});

  List<WeatherDetail> listData;

  @override
  Widget build(BuildContext context) {
    print(listData);
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        DateTime dateTime = DateTime.parse(listData[index].dt_txt);
        String formatDay = DateFormat('EEEE').format(dateTime);
        String formatTime = DateFormat('HH:MM').format(dateTime);

        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white30, borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          NhietDo.nhietDo(
                              listData[index].main.temp.toString(), 24, 15),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            listData[index].weather.main,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 24),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        formatDay,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 58, 132, 61),
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        formatTime,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(AssetCustom.getLinkImg(listData[index].weather.main))
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
      itemCount: 20,
    );
  }
}
