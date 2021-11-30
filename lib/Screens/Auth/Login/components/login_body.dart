import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mybee/Screens/Auth/Login/components/login_background.dart';
import 'package:mybee/Components/RoundedInputField.dart';
import 'package:mybee/Components/RoundedButton.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key? key
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedInputField(
              hintText: "Email",
              onChanged: (value){},
            ),
            RoundedButton(
              text: ("Send Bee-rivication"),
              press: (){},
            )
          ],
        ),
      )
    );
  }
}
