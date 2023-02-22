import 'package:math_evaluator/src/enums/operators.dart';

import 'models/expression.dart';

class MathEvaluator {
  static defaultOptions() => {
        '+': Operators.addition,
        '-': Operators.subtract,
        '/': Operators.divide,
        '*': Operators.multiply,
        '%': Operators.percent,
        '^': Operators.power,
        '(': Operators.bracketOpen,
        ')': Operators.bracketClose,
        'sqrt': Operators.squareRoot,
        'sqr': Operators.square,
        'log': Operators.log,
        'deg': Operators.degree,
        'rad': Operators.radian,
        'fact': Operators.factorial,
        'sin': Operators.sin,
        'cos': Operators.cos,
        'tan': Operators.tan,
        'cosec': Operators.cosec,
        'sec': Operators.sec,
        'cot': Operators.cot,
      };

  static String? evaluate(
    String rawExpression, [
    Map<String, Operators>? options,
  ]) {
    options = options ?? defaultOptions();

    Expression expression =
        Expression.validate(rawExpression, options: options!);

    return expression.solve();
  }
}
