import 'package:flutter/material.dart';
import './constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.buttonRoute});

  final String buttonText;
  final String buttonRoute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, buttonRoute);
      },
      child: Container(
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        )),
        width: double.infinity,
        color: kBottomContainerColour,
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
