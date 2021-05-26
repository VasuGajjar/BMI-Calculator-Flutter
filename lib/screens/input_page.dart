import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/components/custom_icon_text.dart';
import 'package:bmi_calculator/components/custom_slider.dart';
import 'package:bmi_calculator/components/custom_text_button.dart';
import 'package:bmi_calculator/components/custom_value_selector.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;
  int weight = 65;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomIconText(
                            icon: FontAwesomeIcons.mars,
                            text: 'MALE',
                            color: (gender == Gender.male)
                                ? Constants.kActiveCardColor
                                : Constants.kInactiveCardColor,
                            onClick: () {
                              setState(() {
                                selectGender(Gender.male);
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: CustomIconText(
                            icon: FontAwesomeIcons.venus,
                            text: 'FEMALE',
                            color: (gender == Gender.female)
                                ? Constants.kActiveCardColor
                                : Constants.kInactiveCardColor,
                            onClick: () {
                              setState(() {
                                selectGender(Gender.female);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomSlider(
                      height: height,
                      onChange: (double d) {
                        setState(() {
                          height = d.toInt();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: CustomValueSelector(
                          title: 'WEIGHT',
                          value: weight,
                          onMinus: () {
                            setState(() {
                              weight--;
                            });
                          },
                          onPlus: () {
                            setState(() {
                              weight++;
                            });
                          },
                        )),
                        Expanded(
                          child: CustomValueSelector(
                            title: 'AGE',
                            value: age,
                            onMinus: () {
                              setState(() {
                                age--;
                              });
                            },
                            onPlus: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomTextButton(
              title: 'CALCULATE YOUR BMI',
              onClick: () {
                BMICalculator calc =
                    BMICalculator(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      Result: calc.getResult(calc.calculate()),
                      Bmi: calc.calculate(),
                      Details: calc.getDetails(calc.calculate()),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void selectGender(Gender selection) {
    if (selection == Gender.male) {
      gender = Gender.male;
    } else if (selection == Gender.female) {
      gender = Gender.female;
    }
  }
}
