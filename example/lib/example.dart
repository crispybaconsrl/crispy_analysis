// The following syntax deactivates a lint for the entire file:
// ignore_for_file: avoid_print

import 'dart:math';

import './extensions.dart';

void main() {
  /// The following line would normally show a lint warning
  /// but we can disable the lint rule for this line using the following syntax.
  var greeting = 'hello world'; // ignore: prefer_final_locals

  /// The following line would normally show a lint warning
  /// but we can disable the lint rule for this file using `ignore_for_file`.
  print(greeting);

  final classExample = ClassExample();

  /// avoid_single_cascade_in_expression_statements
  classExample..methodExample(test2: '');

  /// avoid_init_to_null
  /// prefer_const_declarations
  final String? initToNull = null;
  print(initToNull);

  /// always_declare_return_types
  var _example = simpleMethod();
  String example2 = simpleMethodForcedType();

  classExample.methodExample(test2: 'test');

  print(_example.capitalize);
  print(example2.capitalize);

  /// avoid_bool_literals_in_conditional_expressions
  final bool test = Random().nextBool() ? true : false;

  if (test) {
    print('true');
  } else {
    print('false');
  }

  /// avoid_escaping_inner_quotes
  print('It\'s not fun');
  print("It's not fun");

  /// avoid_function_literals_in_foreach_calls
  /// unnecessary_lambdas
  [1, 2, 3, 4, 5, 6].forEach((element) => print(element));

  /// avoid_multiple_declarations_per_line
  String? a, b, c;
  print([a, b, c]);

  /// avoid_redundant_argument_values
  changeActive2(isActive: true);
  changeActive2(isActive: false);
}

/// always_declare_return_types
simpleMethod() {
  return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
}

String simpleMethodForcedType() {
  return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
}

/// avoid_positional_boolean_parameters
void changeActive(bool isActive) {
  // do something
}

void changeActive2({bool isActive = false}) {
  // do something
}

/// avoid_private_typedef_functions
typedef void _PrivateTypeDef();

class ClassExample {
  final String firstVariable;
  final String secondVariable;

  ClassExample({
    this.firstVariable = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    this.secondVariable = '',
  });

  /// always_put_required_named_parameters_first
  void methodExample({String? test, required String test2}) {
    print('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. $test $test2');
  }
}
