void l1_list() {
  List<String> silsilahList = ['Pengagungan terhadap Ilmu', 'Belajar Tauhid'];
  print('Initial list:\n$silsilahList\n');

  silsilahList.add('Mengenal Allah ﷻ');
  silsilahList.add('Mengenal Rasulullah ﷺ');
  silsilahList.add('Beriman kepada Hari Akhir');
  silsilahList.add('Mengenal Agama Islam');
  silsilahList.add('Beriman kepada Hari Besar');
  silsilahList.add('Beriman kepada Hari Akhir');

  print('After adding 6 items:\n$silsilahList\n');

  silsilahList.removeAt(4);
  print('After removing an item at the 4th index:\n$silsilahList\n');

  silsilahList[5] = 'Beriman kepada Hari Akhir';
  print('After changing an item at the 5th index$silsilahList\n');

  silsilahList.removeAt(silsilahList.length - 1);
  print('After removing the last index:\n$silsilahList\n');
}
