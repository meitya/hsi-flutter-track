void l1_switch_case() {
  var silsilah1StudentGrade = <String, double>{};
  silsilah1StudentGrade['ART232-00000'] = 99.0;
  silsilah1StudentGrade['ART232-00001'] = 88.75;
  silsilah1StudentGrade['ART232-00002'] = 92.3;

  print(
      'A map of students\' grade (studentID, grade):\n$silsilah1StudentGrade\n');

  var silsilah1StudentGPA = <String, String>{};

  silsilah1StudentGrade.forEach((key, value) {
    switch (value) {
      case >= 90:
        silsilah1StudentGPA[key] = 'Mumtaz';
        break;
      default:
        silsilah1StudentGPA[key] = 'Jayyid Jiddan';
    }
  });

  print(
      'A map of students\' GPA based on their grades (studentID, GPA):\n$silsilah1StudentGPA\n');
}
