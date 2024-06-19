import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class HomeLocation extends StatelessWidget {
  HomeLocation({super.key, required this.location});

  String location;

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icon/location.png'),
            const SizedBox(
              width: 10,
            ),
            Text(
              location,
              style: const TextStyle(color: Colors.white, fontSize: 28),
            )
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          df.format(DateTime.now()),
          style: const TextStyle(fontSize: 28, color: Colors.white),
        ),
      ],
    );
  }
}
