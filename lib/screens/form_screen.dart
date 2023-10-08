// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController emailController = TextEditingController();
  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
          width: 200,
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Email Address"),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                  errorText: isEmailValid ? null : "Email Tidak Valid",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text("Password"),
                  Text(
                    '*',
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16))),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isEmailValid = emailController.text.isNotEmpty;
                      });
                    },
                    child: Text("Daftar")),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Center(child: Text("Kembali"))),
            ],
          ),
        ),
      ],
    )));
  }
}
