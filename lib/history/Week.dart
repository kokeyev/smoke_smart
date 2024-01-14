import 'package:flutter/material.dart';

class Week extends StatelessWidget {
  const Week({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text("День недели")),
        DataColumn(label: Text("Время")),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text('Понедельник')),
          DataCell(Text('40 минут')),
        ]),
        DataRow(cells: [
          DataCell(Text('Вторник')),
          DataCell(Text('40 минут')),
        ]),
        DataRow(cells: [
          DataCell(Text('Средя')),
          DataCell(Text('40 минут')),
        ]),
        DataRow(cells: [
          DataCell(Text('Четверг')),
          DataCell(Text('40 минут')),
        ]),
        DataRow(cells: [
          DataCell(Text('Пятница')),
          DataCell(Text('40 минут')),
        ]),
        DataRow(cells: [
          DataCell(Text('Суббота')),
          DataCell(Text('40 минут')),
        ]),
        DataRow(cells: [
          DataCell(Text('Воскресенье')),
          DataCell(Text('40 минут')),
        ]),
      ],
    );
  }
}
