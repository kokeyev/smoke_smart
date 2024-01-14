import 'dart:io';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'history/Month.dart';
import 'history/Week.dart';
import 'history/Year.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

const List<String> list = <String>['За неделю', 'За месяц', 'За год'];

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  static Widget w1 = const Week();
  static Widget w2 = const Month();
  static Widget w3 = const Year();

  List<Widget> periods = <Widget>[w1, w2, w3];
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

  String dropdownValue = list.first;

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
              Container(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                            color: Colors.blue)))),
                            child: Container(
                              color: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: const Text(
                                'Подключить',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: const Column(
                          children: <Widget>[
                            Text('Инструкция',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30)),
                            Text(
                                '1) Нажмите на кнопку выше, чтобы подключить Вашу электронную сигарету',
                                style: TextStyle(fontSize: 20)),
                            Spacer(),
                            Text(
                                '2) Во второй вкладке Вы можете просмотреть нашу карту, зоны, где Вы не можете курить',
                                style: TextStyle(fontSize: 20)),
                            Spacer(),
                            Text(
                                '3) В третьей вкладке Вы можете просмотреть сколько времени Вы курили за последнею неделю, месяц и год',
                                style: TextStyle(fontSize: 20)),
                            Spacer(),
                            Text(
                                '3) В четвертой вкладке Вы можете просмотреть информацию о Вашем аккаунте, карте, истории и приложении',
                                style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(),
              Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: CustomDropdownButton2(
                          icon: const Icon(Icons.sort_rounded),
                          hint: dropdownValue,
                          value: dropdownValue,
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                              _index = list.indexOf(dropdownValue);
                            });
                          },
                          dropdownItems: list,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: periods[_index],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.account_box_outlined),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Личные данные'),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  Icons.arrow_forward_rounded,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.map),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Карта'),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  Icons.arrow_forward_rounded,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.history_outlined),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('История'),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  Icons.arrow_forward_rounded,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.language),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Язык'),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  Icons.arrow_forward_rounded,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              const Icon(
                                  Icons.integration_instructions_outlined),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('Инструкция'),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  Icons.arrow_forward_rounded,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Card(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.info_sharp),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('О приложении'),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  Icons.arrow_forward_rounded,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
