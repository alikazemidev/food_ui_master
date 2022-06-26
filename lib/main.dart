import 'package:flutter/material.dart';
import 'package:food_master_ui/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.deepOrangeAccent,
            ),
      ),
      home: HomePage(),
    );
  }
}
