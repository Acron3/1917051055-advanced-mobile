import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(image: "assets\images\Savings.png"),
          Container(
            child: Column(
              children: [Text("Let's start the journey")],
            ),
          )
        ],
      ),
    ));
  }
}
