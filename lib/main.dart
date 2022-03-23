import 'package:flutter/material.dart';
import 'package:write_a_day/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Write-Away',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData.dark(),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   fontFamily: 'San Fransisco',
      // ),
      home: const HomePage(),
    );
  }
}
