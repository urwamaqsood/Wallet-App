import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallet/screens/main_screen.dart';

class RegistrationOtp extends StatefulWidget {
  const RegistrationOtp({Key? key}) : super(key: key);

  @override
  _RegistrationOtpState createState() => _RegistrationOtpState();
}

class _RegistrationOtpState extends State<RegistrationOtp> {
  Timer? countdownTimer;
  Duration myDuration = Duration(seconds: 90);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(seconds: 90));
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(1);
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80.0),
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
              height: 250,
            ),
            SizedBox(height: 15.0),
            Text(
              'Enter the OTP you receive as SMS',
              style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800),
            ),
            Text(
              'Enter the mobile number to correct the message to log in',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 19.0,
                  // fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15.0, bottom: 30.0, left: 35.0, right: 35.0),
              child: Row(
                children: [
                  OTPInput(first: true, last: false),
                  SizedBox(width: 15),
                  OTPInput(first: false, last: false),
                  SizedBox(width: 15),
                  OTPInput(first: false, last: false),
                  SizedBox(width: 15),
                  OTPInput(first: false, last: true),
                ],
              ),
            ),
            Text(
              '$minutes:$seconds',
              style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w700,
                  fontSize: 40),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Did you not receive a confirmation message? Resend the code after the time has expired',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 19.0,
                    // fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            TextButton(
              onPressed: () {
                resetTimer();
                startTimer();
              },
              child: Text(
                'Resend OTP',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPInput extends StatelessWidget {
  OTPInput({required this.last, required this.first});
  bool first, last;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: TextStyle(
          color: Colors.grey.shade800,
          fontWeight: FontWeight.w800,
          fontSize: 25,
        ),
        // autofocus: true,
        showCursor: false,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          } else if (value.isNotEmpty) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          }
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          counterText: "",
        ),
      ),
    );
  }
}
