import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/on_boarding.dart';
import 'onBoarding2.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  _OnBoarding1State createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoarding(
        text1: 'The 1st Sundanese Gold investment Application',
        text2: 'Gold App is the 1st gold trading app in Sudan!',
        onPress: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OnBoarding2()));
        },
      ),
    );
  }
}
