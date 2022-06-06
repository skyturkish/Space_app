import 'package:flutter/material.dart';
import 'package:flutter_imbd_redesign_advanced/view/homepage/view/homepage_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomePage());
  }
}
