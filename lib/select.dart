import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<DropdownMenuItem> items = [];
  String selectedValue;

  @override
  void initState() {
    for (int i = 0; i < 20; i++) {
      items.add(new DropdownMenuItem(
        child: new Text(
          'testing this dropdown ' + i.toString(),
        ),
        value: 'testing this dropdown ' + i.toString(),
      ));
    }
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
          child: new SearchableDropdown(
            items: items,
            value: selectedValue,
            hint: new Text('Select One'),
            searchHint: new Text(
              'Select One',
              style: new TextStyle(fontSize: 20),
            ),
            onChanged: (value) {
              setState(() {
                selectedValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}


