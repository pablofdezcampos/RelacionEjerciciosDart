import 'dart:io';

void main(List<String> args) {
  print('Introduzca una frase por favor:');
  var frase = stdin.readLineSync();

  frase = frase.replaceAll(',', '');
  frase = frase.replaceAll(':', '');
  frase = frase.replaceAll(';', '');
  frase = frase.replaceAll('.', '');

  var palabras = frase.split(' ');
  print(palabras);

  var repeticiones = 0;

  for (int i = 0; i < palabras.length; i++) {
    repeticiones = repeticiones + 1;
  }
  print('Ha escrito $repeticiones palabras');
}
