import 'package:flutter/material.dart';
import 'package:wallet/components/material_button.dart';

import '../components/app_bar.dart';
import '../components/input_text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? option;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Text(
                'You can top up your wallet now and start purchasing gold right away!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.5),
              ),
              SizedBox(height: 40.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Syber',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    'Pay\u207A',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Card(
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: BorderSide(color: Colors.grey.shade300)),
                elevation: 0,
                color: Colors.grey[100],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Text(
                            'Language',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.grey.shade600),
                                  value: 'one',
                                  groupValue: option,
                                  onChanged: (value) {
                                    setState(() {
                                      option = value.toString();
                                    });
                                  }),
                              Text('English'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.grey.shade600),
                                  value: 'two',
                                  groupValue: option,
                                  onChanged: (value) {
                                    setState(() {
                                      option = value.toString();
                                    });
                                  }),
                              Text('Arabic'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    InputText(
                      label: 'Amount',
                    ),
                    InputText(
                      label: '123456789',
                    ),
                    InputText(
                        label: 'Expiry date',
                        icon: Icon(Icons.date_range_outlined)),
                    InputText(
                      label: 'IPIN',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 220.0),
                      child: Text(
                        'Dont have IPN?',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 20),
                      child: FinalButton(
                        label: 'Submit',
                        buttonColor: Colors.grey.shade700,
                        weight: FontWeight.w900,
                        textColor: Colors.white,
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
