import 'package:flutter/material.dart';
import 'package:multiple_select/Item.dart';
import 'package:multiple_select/multi_filter_select.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Item<num, String, String>> items = List.generate(
    150,
    (index) => Item.build(
      value: index,
      display: '$index display',
      content: '$index content',
      //content: '$index content' * (index + 1),
    ),
  );

  //List<num> _initValue = [1, 2, 6];
  List<num> _initValue = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Multi Filter Select'),
        ),
        resizeToAvoidBottomPadding: false,
        body: Center(
            child: MultiFilterSelect(
          placeholder: 'Selecciona una o más placas',
          allItems: items,
          initValue: _initValue,
          selectCallback: (List selectedValue) => print(selectedValue.length),
        )),
      ),
    );
  }
}
