import 'dart:io';

String DivideWords() {
  print('Introduce una frase');
  var entrada = stdin.readLineSync();
  var entradaSeparada = entrada.split(' ');

  print(entradaSeparada);
}

void main(List<String> args) {
  DivideWords();
}
