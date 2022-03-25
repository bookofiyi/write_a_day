// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:write_a_day/dark_theme_logic/dark_theme_provider.dart';
import 'package:write_a_day/dark_theme_logic/dark_theme_styles.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                ),
                Text(
                  'Write-Away',
                  style: Styles.themeData(darkModeActive, context)
                      .textTheme
                      .headline1,
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
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: double.infinity,
                      elevation: 3,
                      color: darkModeActive ? Colors.grey : Colors.white,
                      padding: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 8, 16.0, 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // title text
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    'This is the title!',
                                    maxLines: 1,
                                    style: Styles.themeData(
                                            darkModeActive, context)
                                        .textTheme
                                        .headline1,
                                  ),
                                ),
                                // end of title text

                                // options icon
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert_rounded),
                                  padding: EdgeInsets.zero,
                                ),
                                // end of options icon
                              ],
                            ),

                            // body text
                            Text(
                              'This is the body text. It is a snippet of the first two lines of the diary entry. After the available space in the Entry Card has been exhausted, it should overflow into ellipsis',
                              maxLines: 2,
                              style: Styles.themeData(darkModeActive, context)
                                  .textTheme
                                  .bodyText1,
                            ),
                            // end of body text

                            const SizedBox(
                              height: 5,
                            ),

                            // date text
                            Text(
                              '24th March 2022',
                              style: Styles.themeData(darkModeActive, context)
                                  .textTheme
                                  .bodyText2,
                            ),
                            // end of date text
                          ],
                        ),
                      ),
                    ),
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
