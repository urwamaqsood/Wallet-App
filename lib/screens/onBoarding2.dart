import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/screens/main_information.dart';

import '../components/on_boarding.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  _OnBoarding2State createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoarding(
        text1:
            'Save your money value by buying and storing gold in our treasures!',
        text2: 'Gold App is the 1st gold trading app in Sudan!',
        onPress: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainInformation()));
        },
      ),
    );
  }
}
