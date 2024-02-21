void l1_anon_func() {
  var studentResult = 55;

  print('Student with grade ' +
      studentResult.toString() +
      ' is being graded with two method\n');

  print('Student\'s final grade with the old method: ' +
      gradeResult(
          studentResult, (value) => value * 2 >= 100 ? 100 : value * 2) +
      '\n');
  print('Student\'s final grade with the new method: ' +
      gradeResult(studentResult, (value) {
        return value * 1.5;
      }) +
      '\n');
}

String gradeResult(value, func) {
  if (func(value) >= 90) {
    return 'Mumtaz';
  } else {
    return 'Jayyid Jiddan';
  }
}
