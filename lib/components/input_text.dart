import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class InputText extends StatelessWidget {
  InputText({
    required this.label,
    this.icon,
  });

  final String label;
  final Icon? icon;
  // final bool? password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
                  primary: Colors.grey.shade700,
                )),
        child: TextField(
          autofocus: true,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(10.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: Colors.grey.shade500,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey.shade600,
                width: 2,
              ),
            ),
            hintText: label,
            suffixIcon: icon,
          ),
        ),
      ),
    );
  }
}

class Password extends StatelessWidget {
  Password({required this.label, required this.errormsg});

  final String label, errormsg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PasswordField(
        color: Colors.grey.shade700,
        backgroundColor: Colors.white,
        passwordConstraint: r'.*[@$#.*].*',
        hintText: label,
        border: PasswordBorder(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey.shade500,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade600,
              width: 2,
            ),
          ),
        ),
        errorMessage: errormsg,
      ),
    );
  }
}
