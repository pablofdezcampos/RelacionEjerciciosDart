import 'dart:io';

void main(List<String> args) {
  print(
      'Introduzca los número para almacenarlos en un lista, para salir escriba bye');

  var lista = [];
  var suma = 0;
  var cadena;
  var numero = 0;

  do {
    cadena = stdin.readLineSync();
    if (cadena == 'bye') {
      break;
    }
    numero = int.parse(cadena);
    lista.add(numero);
  } while (cadena != 'bye');

  for (var elemento in lista) {
    suma += elemento;
  }
  print(suma);
}
