import 'package:flutter/material.dart';
import 'package:pertemuan_5/basic_widgets/date_picker_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Date Picker',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const DatePickerWidget(title: 'Contoh Date Picker'),
    );
  }
}
