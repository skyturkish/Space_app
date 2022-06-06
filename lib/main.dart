import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imbd_redesign_advanced/view/homepage/view/homepage_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: const [Locale('en', 'US'), Locale('en', 'US')],
    path: 'asset/translations',
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      // debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: const SafeArea(
        child: HomePage(),
      ),
    );
  }
}
