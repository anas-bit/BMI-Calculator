import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {

  CalculatorBrain(this.height,this.weight);

  final int height ;
  final int weight ;
  double _bmi;

  String calculateBMI(){

    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);

  }

  String getResult(){

    if (_bmi >= 25) {
      return 'OverWeight';
    }else if(_bmi >= 18.5){
      return 'Normal';
    }else{
      return 'UnderWeight';
    }
  }

  String getInterPretation(){

    if (_bmi >= 25) {
      return 'You Have a higher than normal Body Weight. Try to Exercise More.';
    }else if(_bmi >= 18.5){
      return 'You Have a normal Body Weight. Good Job!';
    }else{
      return 'You Have a lower than normal Body Weight. you can eat a bit More.';
    }
  }


}
