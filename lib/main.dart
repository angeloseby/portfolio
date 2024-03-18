import 'package:flutter/material.dart';
import 'package:portfolio/configs/constants.dart';
import 'package:portfolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: mainShade),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


// Reference Web : https://aishanipach.netlify.app/