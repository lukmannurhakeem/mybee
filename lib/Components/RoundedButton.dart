import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),

       ),
    );
  }

Widget newElevatedButton(){
  return ElevatedButton(
    child: Text(
      text,
      style: TextStyle(color: Colors.yellow),
    ),
    onPressed: press,
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      textStyle: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w500
      )
    ),
  );
}
}
