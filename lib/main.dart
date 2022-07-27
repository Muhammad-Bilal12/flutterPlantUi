import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/screens/details/detailsScreen.dart';
import 'package:plant_app/screens/home/homeScreen.dart';

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
      title: 'Plants App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: kTextColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const HomeScreen(),
    );
  }
}
