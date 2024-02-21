Map l1_return_value(Map silsilah1StudentGrade) {
  print(
      'A map of students\' grade (studentID, grade):\n$silsilah1StudentGrade\n');

  var silsilah1StudentGPA = <String, String>{};

  silsilah1StudentGrade.forEach((key, value) {
    if (value >= 90) {
      silsilah1StudentGPA[key] = 'Mumtaz';
    } else {
      silsilah1StudentGPA[key] = 'Jayyid Jiddan';
    }
  });

  return silsilah1StudentGPA;
}
