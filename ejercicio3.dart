import 'dart:io';

void main(List<String> args) {
  print('Introduzca una palabra por favor:');
  var frase = stdin.readLineSync();

  var palabras = frase.split('');
  print(palabras);

  var repeticiones = 0;

  for (var i = 0; i < palabras.length; i++) {
    repeticiones = repeticiones + 1;
  }
  print('la palabra $frase, tiene $repeticiones letras');
}
