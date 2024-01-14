import 'package:flutter/material.dart';

class Year extends StatelessWidget {
  const Year({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: const [
          DataColumn(label: Text("Месяц")),
          DataColumn(label: Text("Время")),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('Январь')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Февраль')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Март')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Апрель')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Май')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Июнь')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Июль')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Август')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Сентябрь')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Октябрь')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Ноябрь')),
            DataCell(Text('40 минут')),
          ]),
          DataRow(cells: [
            DataCell(Text('Декабрь')),
            DataCell(Text('40 минут')),
          ]),
        ],
      ),
    );
  }
}
