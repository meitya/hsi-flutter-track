void l1_while_loop() {
  var temp = 'Flutter Track HSI';
  print('Printing $temp with 1 character reduction for each loop\n');

  while (temp.length > 0) {
    print('$temp \n');
    temp = temp.substring(0, temp.length - 1);
  }
}
