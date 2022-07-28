import 'package:flutter/material.dart';

class CountryDropdown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final ValueChanged onChanged;

  const CountryDropdown(
      {required this.countries,
      required this.country,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: country,
          items: countries
              .map(
                (e) => DropdownMenuItem(
                  // ignore: sort_child_properties_last
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 12,
                        child: Image.asset(
                            'assets/images/${e.toLowerCase()}_flag.png'),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        e,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  value: e,
                ),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
