import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:uimahin/utils/styles.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
          child: Text(
        'Page2',
        style: Styles.tabTextStyle,
      )),
    );
  }
}
