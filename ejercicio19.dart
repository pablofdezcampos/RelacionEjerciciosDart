import 'dart:io';

int NumberCheck() {
  var entrada = print('Introduce un número');
  var number = int.parse(stdin.readLineSync());
  do {
    entrada;
    number;
    if (number >= 0 && number <= 10) {
      print('El número pertenece a la serie del 1-10');
    } else if (number < 0 || number > 10) {
      continue;
    }
  } while (number < 0 || number > 10);

  return number;
}

void main(List<String> args) {
  NumberCheck();
}
