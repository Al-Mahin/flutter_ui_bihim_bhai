import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(children: [
          Flexible(
            child: Row(
              children: [
                _buildCard('Total Cases', '1.81 M', Colors.orange),
                _buildCard('Deaths', '105 K', Colors.red)
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                _buildCard('Recovered', '391 K', Colors.green),
                _buildCard('Active', '1.31 M', Colors.lightBlue),
                _buildCard('Critical', 'N/A', Colors.purple),
              ],
            ),
          ),
        ]));
  }

  Expanded _buildCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                count,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
