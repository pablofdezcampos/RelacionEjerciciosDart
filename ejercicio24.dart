import 'dart:io';

void main(List<String> args) {
  var number;
  var list = [];

  while (list.length <= 10) {
    print(
        'Introduzca un número enteros para ordenarlos de menor a mayor, así hasta que haya introducido 10');
    number = stdin.readLineSync();
    list.add(number);
  }
  print(list);
  list.sort();
  print(list);
}
