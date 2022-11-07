import 'package:flutter/material.dart';

class FinalButton extends StatelessWidget {
  FinalButton(
      {required this.label,
      required this.buttonColor,
      required this.textColor,
      required this.weight,
      this.onPress});

  final String label;
  final Color buttonColor, textColor;
  final FontWeight weight;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      height: 45,
      minWidth: 250,
      onPressed: onPress,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(color: textColor, fontSize: 16, fontWeight: weight),
      ),
      color: buttonColor,
    );
  }
}
