void l1_named_param({String? name}) {
  var temp = name ?? 'Flutter Track HSI';

  print('Printing $temp with 1 character reduction for each loop\n');

  for (; temp.length > 0; temp = temp.substring(0, temp.length - 1)) {
    print('$temp \n');
  }
}
