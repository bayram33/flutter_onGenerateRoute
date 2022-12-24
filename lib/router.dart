import "package:flutter/material.dart";
import 'package:navigate/first_page.dart';
import 'package:navigate/main.dart';
import 'package:navigate/second_page.dart';

class RouteConfiguration {
  static Route<dynamic>? onGenerate(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const MyApp());
      case "/first":
        return MaterialPageRoute(builder: (context) => const First_Page());
      case "/second":
        return MaterialPageRoute(
            builder: (context) =>
                Second_Page("Champ Hold on Please Sir Bayram"));
      default:
        return errorRoute();
    }
  }

  static Route<dynamic>? errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(title: const Text("Error Page Babe")),
        body: const Text("Hata Sayfası Bebeğim"),
      );
    });
  }
}
