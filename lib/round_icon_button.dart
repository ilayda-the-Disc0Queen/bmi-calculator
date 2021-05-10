import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Icon(icon),
      onPressed: () {
        print('Pressed');
      },
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: kRoundButtonColour,
        minimumSize: Size.square(60.0),
        shape: CircleBorder(
          side: BorderSide.none,
        ),
      ),
    );
  }
}
