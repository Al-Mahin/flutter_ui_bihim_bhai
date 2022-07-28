import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:uimahin/utils/styles.dart';
import 'package:uimahin/widget/custom_appbar.dart';
import 'package:uimahin/utils/colors.dart';
import 'package:uimahin/widget/stats_grid.dart';

class SecondUI extends StatefulWidget {
  const SecondUI({Key? key}) : super(key: key);

  @override
  State<SecondUI> createState() => _SecondUIState();
}

class _SecondUIState extends State<SecondUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accurate,
      appBar: const CustomAppBar(),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildStat(),
          _buildTab(),
          _buildStatTabBar(),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: StatsGrid(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 10),
            sliver: SliverToBoxAdapter(
                child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/images/usa_flag.png',
              ),
            )),
          ),
        ],
      ),
    );
  }

  SliverPadding _buildStat() {
    return const SliverPadding(
        padding: EdgeInsets.all(8),
        sliver: SliverToBoxAdapter(
            child: Text(
          'Statistics',
          style: TextStyle(
            color: primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        )));
  }

  SliverPadding _buildTab() {
    return SliverPadding(
      padding: const EdgeInsets.all(8),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 2,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white24),
            child: TabBar(
              indicator: const BubbleTabIndicator(
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.white,
                  indicatorHeight: 40),
              labelStyle: Styles.tabTextStyle,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              tabs: const <Widget>[
                Text('My Country'),
                Text('Global'),
              ],
              onTap: (index) {},
            ),
          ),
        ),
      ),
    );
  }

  SliverPadding _buildStatTabBar() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
          child: DefaultTabController(
        length: 3,
        child: TabBar(
          indicatorColor: Colors.transparent,
          tabs: const <Widget>[
            Text('Total'),
            Text('Today'),
            Text('Yesterday'),
          ],
          onTap: (index) {},
        ),
      )),
    );
  }
}
