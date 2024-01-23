import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'statistics/Month.dart';
import 'statistics/Week.dart';
import 'statistics/Year.dart';

List<String> list = <String>['За неделю', 'За месяц', 'За год'];

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);
  @override
  State<StatisticsPage> createState() => _StatisticsPage();
}

class _StatisticsPage extends State<StatisticsPage> {
  String dropdownValue = list.first;
  static Widget w1 = const Week();
  static Widget w2 = const Month();
  static Widget w3 = const Year();

  List<Widget> periods = <Widget>[w1, w2, w3];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
