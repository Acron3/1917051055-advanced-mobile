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
          Center(child: Image.asset("assets/images/Savings.png")),
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Text(
                  "Let's start the journey",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
