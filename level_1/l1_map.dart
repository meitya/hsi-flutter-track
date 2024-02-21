void l1_map() {
  var silsilah1StudentGrade = <String, double>{};
  silsilah1StudentGrade['ART232-00000'] = 99.0;
  silsilah1StudentGrade['ART232-00001'] = 98.75;

  silsilah1StudentGrade['ART232-00002'] = 99.3;

  print('Initial map (studentID, grade):\n$silsilah1StudentGrade\n');

  silsilah1StudentGrade['ART232-00004'] = 100;

  print('After adding 1 new item:\n$silsilah1StudentGrade\n');

  print(
      'Retrieving the grade of a student with ID ART232-00000:${silsilah1StudentGrade['ART232-00000']}\n');

  silsilah1StudentGrade.remove('ART232-00002');
  print(
      'After removing the grade of a student with ID ART232-00002:$silsilah1StudentGrade\n');
}
