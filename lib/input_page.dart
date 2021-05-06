import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_card_content.dart';
import 'reusable_card.dart';

const reusableCardBgColour = Color(0xFF323344);
const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum GenderType {
  female,
  male,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColour;
  Color femaleCardColor = inactiveCardColour;

  void updateCardColour(GenderType gender) {
    // 1 == male, 2 == female
    if (gender == GenderType.male) {
      if (maleCardColor == inactiveCardColour) {
        maleCardColor = activeCardColour;
        femaleCardColor = inactiveCardColour;
      } else {
        maleCardColor = inactiveCardColour;
      }
    } else {
      if (femaleCardColor == inactiveCardColour) {
        femaleCardColor = activeCardColour;
        maleCardColor = inactiveCardColour;
      } else {
        femaleCardColor = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateCardColour(GenderType.male);
                  });
                },
                child: ReusableCard(
                  colour: maleCardColor,
                  cardChild: IconCardContent(
                    gender: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateCardColour(GenderType.female);
                  });
                },
                child: ReusableCard(
                  colour: femaleCardColor,
                  cardChild: IconCardContent(
                    gender: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ))
            ],
          )),
          Expanded(
              child: ReusableCard(
            colour: reusableCardBgColour,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: reusableCardBgColour,
                )),
                Expanded(
                    child: ReusableCard(
                  colour: reusableCardBgColour,
                ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: bottomContainerColour,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
