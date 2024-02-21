void l1_set() {
  var nipSet = {'ART232-00000', 'ART232-000120', 'ART232-20900'};
  print('Initial set:\n$nipSet\n');

  nipSet.add('ART232-00000');
  nipSet.add('ART232-00001');
  nipSet.add('ART232-00002');

  print('After adding 2 unique items and 1 duplicate item:\n$nipSet\n');

  print(
      'Current set length is ${nipSet.length} because set doesn\'t allow duplication\n');

  nipSet.remove('ART232-00003');
  print('After removing an unexisting item:\n$nipSet\n');

  nipSet.remove('ART232-00002');
  print('After removing an existing item:\n$nipSet\n');
}
