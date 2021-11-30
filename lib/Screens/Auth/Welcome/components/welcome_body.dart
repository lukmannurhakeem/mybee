
import 'package:flutter/material.dart';
import 'package:mybee/Components/RoundedButton.dart';
import 'package:mybee/Screens/Auth/Login/LoginScreen.dart';
import 'package:mybee/Screens/Auth/Signup/SignupScreen.dart';
import 'package:mybee/Screens/Auth/Welcome/components/welcome_background.dart';
import 'package:mybee/Components/RoundedInputField.dart';
import 'package:mybee/Screens/HomePage/HomePage.dart';

class WelcomeBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.5),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value){},
            ),
            RoundedInputField(
              hintText: "Password",
              onChanged: (value){},
            ),
            RoundedButton(
              text: ("Bee Started"),
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }),);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
                      }));
                  },
                  child: Text("Forgot password?", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return SignUpScreen();
                      }));
                  },
                  child: Text("Create account", style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 16,
                    fontWeight: FontWeight.w700
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


