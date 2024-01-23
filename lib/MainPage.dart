import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.blue)))),
                  child: Container(
                    color: Colors.blue,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: const Text(
                      'Подключить',
                      style: TextStyle(color: Colors.white, fontSize: 30),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
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
    );
  }
}
