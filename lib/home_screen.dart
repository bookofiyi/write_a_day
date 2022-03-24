import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:write_a_day/dark_theme_logic/dark_theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    // bool darkModeActive = themeChange.darkTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write-Away'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  themeChange.darkTheme = !themeChange.darkTheme;
                });
              },
              icon: const Icon(Icons.nightlight_rounded),
              // icon: const Icon((themeChange.darkTheme == true)
              //     ? Icons.wb_sunny_rounded
              //     : Icons.nightlight_rounded),
            ),
          ),
        ],
      ),
      body: ListView(),
    );
  }
}
