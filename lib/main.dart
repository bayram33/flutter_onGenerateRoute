import 'package:flutter/material.dart';

import "./router.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: "/",
      onGenerateRoute: RouteConfiguration.onGenerate,
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App Bar "),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/first");
            },
            child: const Text("Go to First Page")),
      ),
    );
  }
}
