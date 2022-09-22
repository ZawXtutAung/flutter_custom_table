import 'package:flutter/material.dart';

class NormalTable extends StatefulWidget {
  const NormalTable({super.key});

  @override
  State<NormalTable> createState() => _NormalTableState();
}

class _NormalTableState extends State<NormalTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Table(
        columnWidths: const <int, TableColumnWidth>{
          0: IntrinsicColumnWidth(flex: 0.3),
          1: FlexColumnWidth(),
          2: FixedColumnWidth(64),
        },
        border: TableBorder.all(color: Colors.amber),
        children: [
          TableRow(children: [
            TableCell(
              child: Container(
                color: Colors.blue,
                child: Text('1'),
              ),
            ),
            Text('data'),
            Text('data')
          ]),
          TableRow(children: [
            TableCell(
              child: Container(
                color: Colors.grey,
                child: Text('2'),
              ),
            ),
            Text('data2'),
            Text('data')
          ]),
          TableRow(children: [
            TableCell(
              child: Container(
                color: Colors.blue,
                child: Text('3'),
              ),
            ),
            Text('data3'),
            Text('data')
          ])
        ],
      ),
    );
  }
}
