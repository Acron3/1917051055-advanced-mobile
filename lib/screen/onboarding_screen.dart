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
          Image.asset("assets/images/Savings.png"),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(right: 20, left: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Text(
                  "Let's start the journey",
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Experience seamless digital transactions with JustDuit",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
