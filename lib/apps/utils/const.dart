import 'package:flutter/material.dart';

const linkAsset = 'assets/images/weather/';

class AssetCustom {
  static String getLinkImg(String name) =>
      '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}

class MyKey {
  static const String api_token = '3830e32c4b93c2e2b7d86ead74685780';
}

class NhietDo {
  static Row nhietDo(String nhietDo, double sizeNhietDo, double sizeDo) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nhietDo,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: sizeNhietDo),
        ),
        Text(
          'o',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: sizeDo),
        ),
      ],
    );
  }
}
