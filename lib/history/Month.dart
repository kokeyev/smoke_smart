import 'package:flutter/material.dart';

class Month extends StatelessWidget {
  const Month({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> days = <String>[];
    List<DataRow> rows = <DataRow>[];

    int month = DateTime.now().month.toInt();

    for (int i = 1;
        i <= DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day;
        i++) {
      String d = '0';
      if (i < 10) {
        d = d + i.toString();
      } else {
        d = i.toString();
      }

      String m = '0';
      if (month < 10) {
        m = m + month.toString();
      } else {
        m = month.toString();
      }

      String s = "$d/$m";
      days.add(s);

      rows.add(DataRow(
          cells: [DataCell(Text(s)), const DataCell(Text('40 минут'))]));
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: const [
          DataColumn(label: Text("Дата")),
          DataColumn(label: Text("Время")),
        ],
        rows: rows,
      ),
    );
  }
}
