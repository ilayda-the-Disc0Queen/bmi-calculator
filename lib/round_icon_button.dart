import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      style: TextButton.styleFrom(
        primary: kBottomContainerColour,
        animationDuration: Duration(microseconds: 1),
        backgroundColor: kRoundButtonColour,
        shape: CircleBorder(side: BorderSide.none),
        minimumSize: Size.square(60.0),
      ),
    );
  }
}
