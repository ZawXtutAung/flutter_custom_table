import 'package:flutter/material.dart';

class MDatables extends StatefulWidget {
  const MDatables({super.key});

  @override
  State<MDatables> createState() => _MDatablesState();
}

class _MDatablesState extends State<MDatables> {
  final ScrollController _horizontal = ScrollController();
  final ScrollController _vertical = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        //controller: _vertical,

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Scrollbar(
            // controller: _horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                  border: TableBorder.all(color: Colors.black),
                  columns: const [
                    DataColumn(label: Text('DataTitle')),
                    DataColumn(label: Text('DataTitle')),
                    DataColumn(label: Text('DataTitle')),
                    DataColumn(label: Text('DataTitle')),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data')),
                      DataCell(Text('data'))
                    ])
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
