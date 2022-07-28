import 'package:flutter/material.dart';
import 'package:uimahin/utils/colors.dart';
import 'package:uimahin/utils/styles.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: containerColor,
      body: Center(
          child: Text(
        'ABOUT',
        style: Styles.onlyPageTextStyle,
      )),
    );
  }
}
