import 'package:flutter/material.dart';

class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("After Splash Screen"),
      ),
      body: const Center(
        child: Text("HomePage"),
      ),
    );
  }
}
