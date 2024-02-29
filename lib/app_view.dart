import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          background: Colors.grey.shade100,
          onBackground: Colors.black,
          primary: Color.fromARGB(255, 79, 98, 184),
          secondary: Color.fromARGB(255, 102, 184, 145),
          tertiary: Color.fromARGB(255, 88, 184, 197),
          outline: Colors.grey
        )
      ),
      home: const HomeScreen(),
    );
  }
}