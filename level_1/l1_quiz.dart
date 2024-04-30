import 'dart:io';
import 'dart:math';

void main() {
  print('\nKalkulator');
  print('NIP: ART232-49206\n');

  // print('Menu:');
  // print('  1. Hitung sisi miring segitiga siku-siku');
  // print('  2. Hitung sudut segitiga');
  // print('  3. Hitung jumlah huruf');
  // print('  4. Cari karakter terbanyak\n');

  var input;

  do {
    if (input != null) {
      calculate(input);
    }
    printMenu();

    stdout.write('Pilihan [1/2/3/4/Q (untuk keluar)]: ');
    input = stdin.readLineSync();
  } while (['1', '2', '3', '4'].contains(input.toString().toLowerCase()));

  input.toString().toLowerCase() == 'q'
      ? print('Semoga membantu!\n')
      : print('Pilihan tidak dikenali, program selesai\n');
}

void calculate(menuNo) {
  return menuNo == '1'
      ? findHypotenuse()
      : (menuNo == '2'
          ? findAngle()
          : (menuNo == '3' ? findWordLength() : findCharacter()));
}

void findHypotenuse() {
  print('\n-----Sisi miring segitiga siku-siku-----');
  var a = getValidNumber('Panjang Sisi Segitiga a (cm): ');
  var b = getValidNumber('Panjang Sisi Segitiga b (cm): ');
  print(
      '--->>> Panjang Sisi Miring Segitiga c (cm) adalah ${sqrt(a * a + b * b)}\n');
}

void findAngle() {
  const totalAngle = 180;
  print('\n-------------Sudut segitiga-------------');
  var a = getValidNumber('Sudut segitiga a: ');
  var b = getValidNumber('Sudut segitiga b: ');
  print('Sudut segitiga c adalah ${totalAngle - a - b}\n');
}

void findWordLength() {
  print('\n--------------Jumlah huruf--------------');
  print('Masukkan kata atau kalimat yang ingin dihitung banyak hurufnya:');
  final input = stdin.readLineSync().toString();
  var result = getMappedInput(input);

  print('--->>> Jumlah tiap huruf dari $input adalah $result\n');
}

void findCharacter() {
  print('\n-----------Karakter terbanyak-----------');
  print(
      'Masukkan kata atau kalimat yang ingin dicari apa karakter terbanyaknya:');
  final input = stdin.readLineSync().toString();
  var mappedInput = getMappedInput(input);

  var maxOccurence = mappedInput.values
      .reduce((value, element) => value > element ? value : element);

  var result = Map.fromEntries(
          mappedInput.entries.where((entry) => entry.value == maxOccurence))
      .keys
      .toList();

  print('Jumlah tiap huruf dari $input adalah $mappedInput\n');

  print(
      '--->>> Karakter terbanyak dari $input adalah $result dengan kemunculan sebanyak $maxOccurence kali\n');
}

double getValidNumber(prompt) {
  var input;
  do {
    stdout.write(prompt);
    input = double.tryParse(stdin.readLineSync().toString());
    if (input == null || input <= 0) {
      print('Harap masukkan angka positif!');
    }
  } while (input == null || input <= 0);

  return input as double;
}

Map<String, int> getMappedInput(input) {
  var result = <String, int>{};

  while (input.length > 0) {
    var temp = input.substring(input.length - 1, input.length);
    if (temp.trim().isNotEmpty) {
      result[temp] = result[temp] == null ? 1 : result[temp]! + 1;
    }
    input = input.substring(0, input.length - 1);
  }

  return result;
}

void printMenu() {
  print('''Menu:
  1. Hitung sisi miring segitiga siku-siku
  2. Hitung sudut segitiga
  3. Hitung jumlah huruf
  4. Cari karakter terbanyak\n
''');
}
