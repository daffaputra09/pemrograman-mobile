import 'package:flutter/material.dart';
import 'package:pertemuan_5/basic_widgets/date_picker_widget.dart';
import 'package:pertemuan_5/basic_widgets/fab_widget.dart';
import 'package:pertemuan_5/basic_widgets/image_widget.dart';
import 'package:pertemuan_5/basic_widgets/loading_cupertino.dart';
import 'package:pertemuan_5/basic_widgets/textfield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Widgets',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeNavigationPage(),
    );
  }
}

class HomeNavigationPage extends StatefulWidget {
  const HomeNavigationPage({Key? key}) : super(key: key);

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  int selectedIndex = 0;

  final List<String> pageTitles = <String>[
    'Gambar Polinema',
    'Input Text',
    'Like Button',
    'Loading Cupertino',
    'Date Picker',
  ];

  final List<Widget> pages = const <Widget>[
    MyImageWidget(),
    TextFieldWidget(),
    FabWidget(),
    LoadingCupertinoWidget(),
    DatePickerWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitles[selectedIndex]),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Gambar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            label: 'Like',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_empty),
            label: 'Loading',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Date',
          ),
        ],
      ),
    );
  }
}
