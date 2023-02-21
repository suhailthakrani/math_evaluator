// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:math_evaluator/src/operators.dart';

class MathEvaluator {

  ///
  static Map<String, Operator> defaultOptions =  {
      '+' : Operator.addition,
      '-' : Operator.subtract,
      '/' : Operator.divide,
      '*' : Operator.multiply,
      '%' : Operator.percent,
      '^' : Operator.power,
      'sqrt' : Operator.squareRoot,
      'sqr': Operator.square,
      'log' :Operator.log,
      'deg' : Operator.degree,
      'rad': Operator.radian,
      'fact':Operator.factorial,
      'sin' : Operator.sin,
      'cos' : Operator.cos,
      'tan' : Operator.tan,
      'cosec' : Operator.cosec,
      'sec' : Operator.sec,
      'cot' : Operator.cot,

    };
  ///
  static String? evaluate(String expression, [Map<String, Operator>? options]) {
    options = options ?? defaultOptions;
    return null;
  }
}
