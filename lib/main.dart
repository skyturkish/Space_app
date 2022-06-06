import 'package:flutter/material.dart';
import 'package:flutter_imbd_redesign_advanced/view/homepage/view/homepage_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: const SafeArea(
        child: HomePage(),
      ),
    );
  }
}
