import 'package:flutter/material.dart';
import 'package:uimahin/utils/colors.dart';
import 'package:uimahin/widget/country_dropdown.dart';
import 'package:uimahin/widget/custom_appbar.dart';

class FirstUI extends StatefulWidget {
  const FirstUI({Key? key}) : super(key: key);

  @override
  State<FirstUI> createState() => _FirstUIState();
}

class _FirstUIState extends State<FirstUI> {
  String _country = 'CN';
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: primaryColor,
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPrevention(screenHeight),
          _buildEnd(screenHeight)
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: const BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        padding: EdgeInsets.all(20),
        height: 300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Covid-19',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                CountryDropdown(
                  countries: ['CN', 'USA'],
                  country: _country,
                  onChanged: (value) {
                    setState(() {
                      _country = value;
                    });
                  },
                )
              ],
            ),
            const Text(
              'Are you feeling sick?',
              style: TextStyle(color: primaryColor),
            ),
            const Text(
              'If you feeling sick with any of covid-19 symptoms\nplease call or SMS us immediately for help.',
              style: TextStyle(color: primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    height: 40,
                    width: 140,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: callContainer),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.phone,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Call Now',
                          style: TextStyle(color: primaryColor),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (() {}),
                  child: Container(
                    height: 40,
                    width: 140,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: blueColor),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.chat_outlined,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Send SMS',
                          style: TextStyle(color: primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildPrevention(double screenheight) {
    return SliverToBoxAdapter(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Prevention',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/distance.jpg",
                        height: 50,
                        width: 120,
                      ),
                      Text('Avoid close\ncontact'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/wash.jpg",
                        height: 50,
                        width: 120,
                      ),
                      Text('Clean your\nhands often'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/mask.png",
                        height: 50,
                        width: 120,
                      ),
                      Text('Wear a\nfacemask'),
                    ],
                  ),
                ],
              ),
            ),
          ]),
    ));
  }

  SliverToBoxAdapter _buildEnd(double screenHeight) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: screenHeight * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 175, 161, 230),
                  accurate,
                ],
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/own_test.png',
                height: 80,
              ),
              const Text(
                  'Lorem Ipsum is simply\n dummy text of the printing and')
            ],
          ),
        ),
      ),
    );
  }
}
