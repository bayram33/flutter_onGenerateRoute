import "package:flutter/material.dart";

class First_Page extends StatelessWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/second",
                );
              },
              child: const Text("Go to Second Page")),
        ),
      ),
    );
  }
}
