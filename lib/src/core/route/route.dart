import 'package:app_i_never/src/feature/presentation/ui/home.page.dart';
import 'package:app_i_never/src/feature/presentation/ui/suggest.page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
// Define Routes

// Route Names
  static const String homePage = 'home_page';
  static const String suggestPage = 'suggest_page';
  static const String gamePage = 'game_page';

// Control our page route flow
  static Route<dynamic> controller(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case suggestPage:
        return MaterialPageRoute(builder: (context) => SuggestPage());
      case gamePage:
        return MaterialPageRoute(builder: (context) => Container());
      default:
        throw ('This route name does not exit');
    }
  }
}
