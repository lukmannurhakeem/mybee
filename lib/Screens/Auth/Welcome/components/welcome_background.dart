
import 'package:flutter/material.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 271,
            left: 96,
            child: Text(
              'Bee there',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'Varela',
                  fontSize: 48,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 226.243127822875977,
            left: -19.795307159423828,
            child: Container(
              width: 174,
              height: 230,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Image.asset(
                      'assets/images/beeHomeScreen.png'
                    ),
                  )
                ],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
