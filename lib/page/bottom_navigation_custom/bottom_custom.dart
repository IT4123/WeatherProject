import 'package:flutter/material.dart';
import 'package:flutter_app_weather/page/details/detail_page.dart';
import 'package:flutter_app_weather/page/home/my_home_page.dart';

class BottomNavigationCustom extends StatefulWidget {
  const BottomNavigationCustom({super.key});

  @override
  State<BottomNavigationCustom> createState() => _BottomNavigationCustomState();
}

class _BottomNavigationCustomState extends State<BottomNavigationCustom> {
  List<BottomNavigationBarItem> listItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.list,
        ),
        label: 'List'),
  ];

  List<Widget> listPages = [
    const MyHomePage(title: 'Thời tiết hôm nay'),
    const DetailPage()
  ];

  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[activePage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        iconSize: 30,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.white24,
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
        items: listItems,
      ),
    );
  }
}
