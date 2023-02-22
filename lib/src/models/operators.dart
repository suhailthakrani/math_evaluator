import '../enums/operator.dart';

class Operators {
  Map<String, dynamic> values = {};

  Operators(this.values);

  static Map<Operator, String> defaultOptions() => {
        Operator.addition: '+',
        Operator.subtract: '-',
        Operator.divide: '/',
        Operator.multiply: '*',
        Operator.percent: '%',
        Operator.power: '^',
        Operator.bracketOpen: '(',
        Operator.bracketClose: ')',
        Operator.squareRoot: 'sqrt',
        Operator.square: 'sqr',
        Operator.log: 'log',
        Operator.degree: 'deg',
        Operator.radian: 'rad',
        Operator.factorial: 'fact',
        Operator.sin: 'sin',
        Operator.cos: 'cos',
        Operator.tan: 'tan',
        Operator.cosec: 'cosec',
        Operator.sec: 'sec',
        Operator.cot: 'cot',
      };
}
