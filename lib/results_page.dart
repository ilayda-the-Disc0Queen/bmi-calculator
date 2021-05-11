import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Container(
            child: Text('Your result', style: kIconCardNumberTextStyle),
            padding: EdgeInsets.all(15.0),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'normal',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '20.0',
                    style: kBMINumberStyle,
                  ),
                  Text(
                    'You BMI is just fine, well done you for keeping your damn life in balance baybee 😎',
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              child: Center(
                  child: Text(
                'RE-CALCULATE',
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
          ),
        ],
      ),
    );
  }
}
