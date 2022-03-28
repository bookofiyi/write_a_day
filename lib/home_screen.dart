// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:write_a_day/components/entry_card.dart';
import 'package:write_a_day/dark_theme_logic/dark_theme_provider.dart';
// import 'package:write_a_day/dark_theme_logic/dark_theme_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    bool darkModeActive = themeChange.darkTheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // header
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  SvgPicture.asset(
                    'assets/images/diaree-logo.svg',
                    color: darkModeActive ? Colors.white : Colors.black,
                    height: 50,
                    width: 50,
                    semanticsLabel: 'Diaree Logo',
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        themeChange.darkTheme = !themeChange.darkTheme;
                        darkModeActive = themeChange.darkTheme;
                      });
                    },
                    icon: darkModeActive
                        ? const Icon(Icons.wb_sunny_rounded)
                        : const Icon(Icons.nightlight_rounded),
                  ),
                ],
              ),
            ),
            // end of header

            // search box
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color:
                        darkModeActive ? const Color(0xff2C2C2A) : Colors.white,
                    boxShadow: darkModeActive
                        ? const [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 4,
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            )
                          ]
                        : const [
                            BoxShadow(
                              color: Color(0xff2C2C2A),
                              spreadRadius: 4,
                              blurRadius: 10,
                              offset: Offset(0, 0),
                            )
                          ]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search_rounded, size: 20),
                      border: InputBorder.none,
                      hintText: 'Search Entries',
                      hintStyle: TextStyle(
                        color: darkModeActive ? Colors.white : Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // end of search box

            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                  EntryCard(
                    darkModeActive: darkModeActive,
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
