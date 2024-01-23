import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    const Icon(Icons.integration_instructions_outlined),
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
    );
  }
}
