void l1_scope() {
  var init = 'HSI';
  print('Printing $init with 1 character reduction for each loop\n');

  for (var temp = init;
      temp.length > 0;
      temp = temp.substring(0, temp.length - 1)) {
    print('$temp \n');
  }

  print('Initial value: $init');
  // print('Value modified inside for loop: ' + temp); // error
}
