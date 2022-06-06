import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imbd_redesign_advanced/core/init/translations/language_manager.dart';
import 'package:flutter_imbd_redesign_advanced/view/homepage/view/homepage_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: 'asset/translations',
    startLocale: LanguageManager.instance.enLocale,
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
