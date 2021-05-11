// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'round_icon_button.dart';

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
  int sliderValue = 180;
  int weight = 60;
  int age = 25;

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
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        sliderValue.toString(),
                        style: kIconCardNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kIconCardTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kLabelTextColour,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 17.0),
                      thumbColor: kBottomContainerColour,
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 35.0),
                      overlayColor: kTransparentBottomContainerColour,
                      trackHeight: 1.5,
                    ),
                    child: Slider(
                      value: sliderValue.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          sliderValue = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kIconCardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: kIconCardNumberTextStyle,
                            ),
                            Text(
                              'KG',
                              style: kIconCardTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight = weight + 1;
                                  print(weight);
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  weight = weight - 1;
                                  print(weight);
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kReusableCardBgColour,
                  )),
                  Expanded(
                      child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kIconCardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: kIconCardNumberTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age++;
                                  print(weight);
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age--;
                                  print(weight);
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    colour: kReusableCardBgColour,
                  )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/results');
              },
              child: Container(
                child: Center(
                    child: Text(
                  'CALCULATE',
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
      ),
    );
  }
}
