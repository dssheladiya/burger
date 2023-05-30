import 'package:flutter/material.dart';
import 'Menu1Widget.dart';
import 'Menu2Widget.dart';
import 'Favourites2Widget.dart';
import 'Favourites1Widget.dart';
import 'OnlineWidget.dart';
import 'Online1Widget.dart';
import 'Online2Widget.dart';
import 'DeliveringWidget.dart';
import 'Delivering1Widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Delivering(),
    );
  }
}
