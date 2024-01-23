import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:smoke_smart/StatisticsPage.dart';

import 'MapPage.dart';
import 'MainPage.dart';
import 'SettingsPage.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              MainPage(),
              MapPage(),
              StatisticsPage(),
              SettingsPage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              _pageController.jumpToPage(index);
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text('Главная')),
            BottomNavyBarItem(
                icon: const Icon(Icons.map), title: const Text('Карта')),
            BottomNavyBarItem(
                icon: const Icon(Icons.history), title: const Text('История')),
            BottomNavyBarItem(
                icon: const Icon(Icons.account_box_outlined),
                title: const Text('Аккаунт')),
          ],
        ),
      ),
    );
  }
}
