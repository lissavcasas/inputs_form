import 'package:flutter/material.dart';
import 'package:multiple_select/multi_drop_down.dart';
import 'package:multiple_select/multiple_select.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<MultipleSelectItem> elements = List.generate(
    15,
    (index) => MultipleSelectItem.build(
      value: index,
      display: '$index display',
      content: '$index content',
    ),
  );

  List _selectedValues = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Searchable Dropdown Demo'),
        ),
        resizeToAvoidBottomPadding: false,
        body: Center(
          child: MultipleDropDown(
            placeholder: 'holi',
            disabled: false,
            values: _selectedValues,
            elements: elements,
          ),
        ),
      ),
    );
  }
}
