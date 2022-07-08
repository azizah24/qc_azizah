import 'dart:async';

import 'package:flutter/material.dart';
import 'package:qc_azizah/pages/homepage.dart';
import 'package:qc_azizah/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigate() async {
    await new Future.delayed(const Duration(seconds: 2));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background1,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'QC Test',
                style: boldStyle.copyWith(color: white, fontSize: 24),
              ),
              Text(
                'Azizah',
                style: boldStyle.copyWith(color: white, fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
