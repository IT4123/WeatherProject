import 'package:flutter/material.dart';
import 'package:flutter_app_weather/apps/utils/const.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
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
                          NhietDo.nhietDo('31', 24, 15),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Clouds',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Monday',
                        style: TextStyle(
                            color: Color.fromARGB(255, 58, 132, 61),
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        '19:00 AM',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(AssetCustom.getLinkImg('clouds'))
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
