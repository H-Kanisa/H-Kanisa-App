import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/responsive.dart';
import 'package:responsive_dashboard/config/size_config.dart';

import '../pallete.dart';
import 'navigatormenu.dart';

int currentStep = 0;
var num = 0;

class buildStepperForm extends StatefulWidget {
  @override
  State<buildStepperForm> createState() => _buildStepperFormState();
}

class _buildStepperFormState extends State<buildStepperForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stepper(
      type: StepperType.horizontal,
      steps: getSteps(),
      currentStep: currentStep,
      onStepContinue: () {
        final isLastStep = currentStep == getSteps().length - 1;
        if (isLastStep) {
          print("Completed");
        } else {
          setState(() => currentStep += 1);
        }
        setState(() => currentStep += 1);
      },
      onStepCancel:
          currentStep == 0 ? null : () => setState(() => currentStep -= 1),
    ));
  }
}

List<Step> getSteps() => [
      Step(
        isActive: currentStep >= num,
        title: Text(''),
        content: Container(),
      ),
      Step(
        isActive: currentStep >= num + 1,
        title: Text(''),
        content: Container(),
      ),
      Step(
        isActive: currentStep >= num + 2,
        title: Text(''),
        content: Container(),
      ),
    ];
/*
Widget BuildStepperForm({
  String title,
  Container content,
  Function getSteps(),
}) {
    return Scaffold(
        body: Stepper(
      type: StepperType.horizontal,
      steps: getSteps(),
      
      currentStep: currentStep,
       
  ));*/

