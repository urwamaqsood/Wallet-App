import 'package:flutter/material.dart';

import 'material_button.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({required this.text1, required this.text2, this.onPress});

  final String text1, text2;
  Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100.0),
        Center(
            child: Text(
          'AZ Gold',
          style: TextStyle(fontSize: 50.0),
        )),
        SizedBox(height: 20.0),
        SizedBox(
          child: Image.asset(
            'images/gold.jpeg',
            fit: BoxFit.cover,
          ),
          height: 300,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: 15.0),
              Text(
                text2,
                style: TextStyle(
                    fontSize: 19.0,
                    // fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
              SizedBox(height: 70.0),
              FinalButton(
                  label: 'Next',
                  textColor: Colors.black,
                  buttonColor: Colors.grey.shade400,
                  weight: FontWeight.w900,
                  onPress: onPress),
            ],
          ),
        ),
      ],
    );
  }
}
