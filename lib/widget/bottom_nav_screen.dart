import 'package:flutter/material.dart';
import 'package:uimahin/pages/page3.dart';
import 'package:uimahin/pages/page4.dart';
import 'package:uimahin/screen/first_ui.dart';
import 'package:uimahin/screen/second_ui.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  static final list_screens = [
    const FirstUI(),
    const SecondUI(),
    const Page3(),
    const Page4(),
  ];
  int _CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: list_screens[_CurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _CurrentIndex,
            onTap: (index) {
              setState(() {
                _CurrentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.white,
            showSelectedLabels: false,
            elevation: 0,
            items:
                [Icons.home, Icons.insert_chart, Icons.event_note, Icons.info]
                    .asMap()
                    .map((key, value) => MapEntry(
                        key,
                        BottomNavigationBarItem(
                          label: (''),
                          icon: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 16),
                            decoration: BoxDecoration(
                              color: _CurrentIndex == key
                                  ? Colors.blue[600]
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(value),
                          ),
                        )))
                    .values
                    .toList()));
  }
}
