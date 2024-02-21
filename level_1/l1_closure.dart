void l1_closure() {
  var silsilah1StudentGrade = <String, double>{};
  silsilah1StudentGrade['ART232-00000'] = 99.0;
  silsilah1StudentGrade['ART232-00001'] = 48.75;
  silsilah1StudentGrade['ART232-00002'] = 92.3;
  silsilah1StudentGrade['ART232-00003'] = 49.0;
  silsilah1StudentGrade['ART232-00004'] = 88.75;
  silsilah1StudentGrade['ART232-00005'] = 92.3;

  print(
      'A map of students\' grade (studentID, grade):\n$silsilah1StudentGrade\n');

  print(
      '''The teacher would like to help his students whose scores are below 50'
      by giving them an additional 2 points and'
      appreciate those whose scores are over 90 by giving them'
      an additional point\n''');

  var silsilah1StudentFinalGrade = <String, double>{};

  var gradeRounderBelow50 = gradeRounder(2);
  var gradeRounderOver90 = gradeRounder(1);

  silsilah1StudentGrade.forEach((key, value) {
    if (value < 50) {
      silsilah1StudentFinalGrade[key] = gradeRounderBelow50(value);
    } else if (value > 90) {
      silsilah1StudentFinalGrade[key] = gradeRounderOver90(value);
    } else {
      silsilah1StudentFinalGrade[key] = value;
    }
  });

  print(
      'Students\' final grades (studentID, grade):\n$silsilah1StudentFinalGrade\n');
}

Function gradeRounder(int addBy) => (grade) => grade + addBy;
