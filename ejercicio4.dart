import 'dart:io';

void main() {
  print('Escribe una frase');
  var frase = stdin.readLineSync();
  var repeticiones = <String, int>{};
  frase = frase.replaceAll('.', ''); //Reemplazar . por cadena vacia
  frase = frase.replaceAll(',', '');
  frase = frase.replaceAll(';', '');
  var palabras = frase.split(' ');
  //Separa cadena de caracteres, para quitar espacios lo hemos usados
  print(palabras);
  var word = '';
  var indice = 0;
  var contador = 0;
  for (var i = 0; i < palabras.length; i++) {
    word = palabras[i];
    do {
      indice = frase.indexOf(word); //devuelve la posicion
      contador++;
      indice++; //Inclusivo hay que incrementarlo
    } while (indice != -1);
    print('la palabra $word aparece ${contador - 1} veces');
  }
}
