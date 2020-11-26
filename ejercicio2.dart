import 'dart:io';

void main() {
  print('Escriba una palabra');

  var frase = stdin.readLineSync();

  Set<String> letras = {};

  for (var i = 0; i < frase.length; i++) {
    letras.add(frase[i]);
  }
  print(letras);
}
