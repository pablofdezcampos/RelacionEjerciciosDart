import 'dart:io';

void main(List<String> args) {
  print('Escriba la cantidad de euros que quieres convertir a bitcoins');
  var entrada = double.parse(stdin.readLineSync());

  var conversor = entrada * 0.000091;

  print('$entrada bitcoins son $conversor euros');
}
