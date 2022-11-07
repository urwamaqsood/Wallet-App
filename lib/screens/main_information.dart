import 'package:flutter/material.dart';

import '../components/input_text.dart';
import '../components/material_button.dart';
import 'main_screen.dart';

class MainInformation extends StatefulWidget {
  @override
  _MainInformationState createState() => _MainInformationState();
}

class _MainInformationState extends State<MainInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 80.0),
            Center(
              child: Text(
                'AZ GOLD',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            // SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                margin: EdgeInsets.all(0.0),
                color: Colors.grey.shade300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      'Personal Info',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Setup your phone number, verify your phone',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15.0,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    InputText(label: 'Name', icon: Icon(Icons.email_rounded)),
                    Password(
                        label: 'Password',
                        errormsg:
                            'must contain special character either . * @ # \$'),
                    Password(
                        label: 'Re-type Password',
                        errormsg: 'Password doesnot match'),
                    InputText(label: 'Email', icon: Icon(Icons.email_rounded)),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: InputText(
                              label: '+249',
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: InputText(label: 'xxx xxx xxxx'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: FinalButton(
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  label: 'Send Verification Code ',
                  buttonColor: Colors.grey.shade500,
                  textColor: Colors.black,
                  weight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
