import 'dart:math';

class bmiLogic {
  bmiLogic({required this.height, required this.weight});
  final  height;
  final  weight;
  double bmi = 0;
  String res='';


  String calculatebmi() {
    print(height);
    bmi = weight / pow((height / 100), 2);
    res= bmi.toStringAsFixed(1);
    return bmi.toStringAsFixed(1);





  }


  String getResult() {
    if (bmi >= 25) {
      return "OVERWEIGHT";
    } else if (bmi < 18.5) {
      return "UNDERWEIGHT";
    } else
      return "NORMAL";
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight';
    } else if (bmi >= 18.5) {
      return 'You have a normal body weight,Good Job!';
    } else {
      return 'You have a lower than normal body weight';
    }
  }
}
