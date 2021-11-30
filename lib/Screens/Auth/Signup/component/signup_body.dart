import 'package:flutter/material.dart';
import 'package:mybee/Screens/Auth/Signup/component/signup_background.dart';
import 'package:mybee/Components/RoundedInputField.dart';
import 'package:mybee/Components/RoundedButton.dart';


class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SignUpBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedInputField(
              hintText: "Username",
              onChanged: (value){},
            ),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value){},
            ),
            RoundedInputField(
              hintText: "Password",
              onChanged: (value){},
            ),
            RoundedInputField(
              hintText: "Phone number",
              onChanged: (value){},
            ),
            RoundedButton(
              text: ("Bee Created"),
              press: (){},
            )
          ],
        ),
      ),
    );
  }
}