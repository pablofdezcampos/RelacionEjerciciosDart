import 'dart:io';

// ignore: always_declare_return_types
void main() {
  print('Introduce cualquier cadena de texto');
  var cadena = stdin.readLineSync();
  print('Lo que has escrito es $cadena');
  print('Lo que has escrito al revés es: ${cadena.split('').reversed.join()}');
}
