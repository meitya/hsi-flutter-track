import 'l1_anon_func.dart';
import 'l1_closure.dart';
import 'l1_for_loop.dart';
import 'l1_hof.dart';
import 'l1_if_else.dart';
import 'l1_list.dart';
import 'l1_map.dart';
import 'l1_named_param.dart';
import 'l1_optional_param.dart';
import 'l1_recursive.dart';
import 'l1_return_value.dart';
import 'l1_scope.dart';
import 'l1_set.dart';
import 'l1_switch_case.dart';
import 'l1_while_loop.dart';

void main() {
  print('----- List -----\n');
  l1_list();

  print('----- Set -----\n');
  l1_set();

  print('----- Map -----\n');
  l1_map();

  print('----- For Loop -----\n');
  l1_for_loop();

  print('----- While Loop -----\n');
  l1_while_loop();

  print('----- If Else -----\n');
  l1_if_else();

  print('----- Switch Case -----\n');
  l1_switch_case();

  print('----- Function with Optional Param -----\n');
  l1_optional_param('HSI!');

  print('----- Function with Named Param -----\n');
  l1_named_param(name: 'HSI');

  print('----- Function with Return Value -----\n');
  var silsilah1StudentGrade = <String, double>{};
  silsilah1StudentGrade['ART232-00000'] = 99.0;
  silsilah1StudentGrade['ART232-00001'] = 88.75;
  silsilah1StudentGrade['ART232-00002'] = 92.3;

  print('A map of students\' GPA based on their grades (studentID, GPA):\n' +
      l1_return_value(silsilah1StudentGrade).toString() +
      '\n');

  print('----- Function with Short Expression -----\n');
  bool negateValue(val) => !val;
  var isFinished = true;
  print('isFinished: $isFinished\n');

  negateValue(isFinished);
  print('negated isFinished: ${negateValue(isFinished)}\n');

  print('----- Higher Order Function -----\n');
  l1_hof();

  print('----- Anonymous Function -----\n');
  l1_anon_func();

  print('----- Scope -----\n');
  l1_scope();

  print('----- Closure -----\n');
  l1_closure();

  print('----- Recursive Function -----\n');
  l1_recursive(13);
}
