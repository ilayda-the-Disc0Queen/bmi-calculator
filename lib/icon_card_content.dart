import 'package:flutter/material.dart';
import 'constants.dart';

class IconCardContent extends StatelessWidget {
  IconCardContent({this.gender, this.icon});

  final String gender;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          gender,
          style: kIconCardTextStyle,
        )
      ],
    );
  }
}
