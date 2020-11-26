import 'dart:io';

void main() {
  print('Introduzca una palabra por favor:');

  var frase = stdin.readLineSync();

  for (int i = 0; i < frase.length; i++) {
    var repeticiones = 0;

    for (int j = 0; j < frase.length; j++) {
      if (frase[i] == frase[j]) {
        repeticiones++;
      }
    }
    print('La palabra ${frase[i]} se repite ${repeticiones} veces');
  }
}
