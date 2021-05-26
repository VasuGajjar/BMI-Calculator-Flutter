class BMICalculator {
  final int height;
  final int weight;

  BMICalculator({this.height, this.weight});

  double calculate() {
    return this.weight / ((this.height / 100) * (this.height / 100));
  }

  String getResult(double bmi) {
    if (bmi < 18.5) {
      return 'UNDERWEIGHT';
    } else if (bmi < 25) {
      return 'NORMAL';
    } else if (bmi < 30) {
      return 'OVERWEIGHT';
    } else {
      return 'OBESITY';
    }
  }

  String getDetails(double bmi) {
    if (bmi < 18.5) {
      return 'Eat Some More Food, You are too Skinny';
    } else if (bmi < 25) {
      return 'Awesome, Your BMI is Normal';
    } else if (bmi < 30) {
      return 'Too Heavy, Do Some Exercise';
    } else {
      return 'Heavy Weight Champion, Eat Less Do More';
    }
  }
}
