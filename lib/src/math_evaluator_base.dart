import 'package:math_evaluator/src/enums/operator.dart';

import 'models/expression.dart';

class MathEvaluator {
  static defaultOptions() => {
        '+': Operator.addition,
        '-': Operator.subtract,
        '/': Operator.divide,
        '*': Operator.multiply,
        '%': Operator.percent,
        '^': Operator.power,
        '(': Operator.bracketOpen,
        ')': Operator.bracketClose,
        'sqrt': Operator.squareRoot,
        'sqr': Operator.square,
        'log': Operator.log,
        'deg': Operator.degree,
        'rad': Operator.radian,
        'fact': Operator.factorial,
        'sin': Operator.sin,
        'cos': Operator.cos,
        'tan': Operator.tan,
        'cosec': Operator.cosec,
        'sec': Operator.sec,
        'cot': Operator.cot,
      };

  static String? evaluate(
    String rawExpression, [
    Map<String, Operator>? options,
  ]) {
    options = options ?? defaultOptions();

    Expression expression =
        Expression.validate(rawExpression, options: options!);

    return expression.solve();
  }
}
