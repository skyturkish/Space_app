import 'package:flutter/material.dart';
import 'package:flutter_imbd_redesign_advanced/core/constants/navigation/navigation_constants.dart';
import 'package:flutter_imbd_redesign_advanced/view/homepage/view/homepage.dart';
import 'package:flutter_imbd_redesign_advanced/view/notFound/not_found.dart';
import 'package:flutter_imbd_redesign_advanced/view/welcome/view/homepage_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(const WelcomePage(), NavigationConstants.DEFAULT);

      case NavigationConstants.HOMEPAGE:
        return normalNavigate(const HomePage(), NavigationConstants.HOMEPAGE);
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFound(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget,
        //analytciste görülecek olan sayfa ismi için pageName veriyoruz
        settings: RouteSettings(name: pageName));
  }
}
