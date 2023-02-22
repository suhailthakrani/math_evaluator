import 'package:math_evaluator/src/enums/operator.dart';
import 'package:math_evaluator/src/extensions/extensions.dart';

class Expression {
  String expression;
  Map<String, Operator> options;

  List _expression = [];
  List<Expression> subExpressions = [];

  Expression(this.expression, {required this.options}) {}

  Expression.validate(this.expression, {required this.options}) {
    for (String chr in expression.toList()) {
      var either = double.tryParse(chr) ?? options[chr];
      print(either);

      if (either == null) {
        throw Exception(
          "Invalid Syntax or Undefined Operator '$chr' in '$expression'",
        );
      }
    }
  }

  String? solve() {
    return null;
  }
}
