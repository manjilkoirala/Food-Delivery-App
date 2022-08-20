import 'package:ecommerce/constants/global_variables.dart';
import 'package:ecommerce/widgets/big_text.dart';
import 'package:flutter/material.dart';

import 'Screen/Homepage/food_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
