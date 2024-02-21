void l1_hof() {
  var studentResult = 55;

  print('Student with grade $studentResult is being graded with two methods\n');

  double oldMethod(value) => value * 2 >= 100 ? 100 : value * 2;
  double newMethod(value) => value * 1.5;

  print('Student\'s final grade with the old method: ' +
      gradeResult(studentResult, oldMethod) +
      '\n');
  print('Student\'s final grade with the new method: ' +
      gradeResult(studentResult, newMethod) +
      '\n');
}

String gradeResult(value, func) {
  if (func(value) >= 90) {
    return 'Mumtaz';
  } else {
    return 'Jayyid Jiddan';
  }
}
