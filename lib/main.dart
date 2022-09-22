import 'package:flutter/material.dart';
import 'package:flutter_table/data_table.dart';
import 'package:flutter_table/paginated_data_table.dart';
import 'package:flutter_table/normal_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Table'),
        ),
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return NormalTable();
                }));
              },
              child: Card(
                child: Container(
                  height: 40,
                  child: Text(
                    'Norman',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return TablePaginatedData();
                }));
              },
              child: Card(
                child: Container(
                  height: 40,
                  child:
                      Text(textAlign: TextAlign.center, 'PaginatedDataTable'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return MDatables();
                }));
              },
              child: Card(
                child: Container(
                  height: 40,
                  child: Text(textAlign: TextAlign.center, 'DataTable'),
                ),
              ),
            )
          ],
        ));
  }
}
