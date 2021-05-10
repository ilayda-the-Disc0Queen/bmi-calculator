// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum GenderType {
  female,
  male,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                  colour: selectedGender == GenderType.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconCardContent(
                    gender: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  colour: selectedGender == GenderType.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: IconCardContent(
                    gender: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                ))
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: kReusableCardBgColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kIconCardTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '180',
                        style: kIconCardNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kIconCardTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    colour: kReusableCardBgColour,
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: kReusableCardBgColour,
                  ))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: kBottomContainerColour,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ),
      ),
    );
  }
}
