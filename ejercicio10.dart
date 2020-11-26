//Implementa un programa que convierta la temperatura expresada en grados centígrados (C) a Fahrenheit (F) y viceversa sabiendo que:
//F = 1.8C + 32
//C = (F - 32) / 1.8

import 'dart:ffi';

import 'dart:io';

const operando = 1.8;
var grados;
var farenehit;

int MenuPrincipal() {
  print('*' * 25);
  print('MENU PRINCIPAL');
  print('''
  Por favor selecciona una opción:
  1.- Convertir Grados a Farenheit.
  2.- Convertir Fareneheit a Grados.
  3.- Salir.
  ''');
  print('Eliga una opción (1-3)');
  var cadena = stdin.readLineSync();
  var menu = int.tryParse(cadena);
  return menu;
}

int gradosAFahrenheit() {
  stdout.write('Introduce el valor de Grados que quiera convertir a Farenheit');
  var entrada = stdin.readLineSync();
  var parseado = int.parse(entrada);

  farenehit = (operando * parseado) + 32;

  print('$entrada Grados son $farenehit Farenheit: ');
}

int fahrenheitAGrados() {
  stdout.write('Introduce el valor de Farenheit que quiere convertir a Grados');
  var entrada = stdin.readLineSync();
  var parseado = int.parse(entrada);
  grados = (parseado - 32) / operando;

  print('$entrada Farenheit son $grados Grados: ');
}

void main(List<String> args) {
  var menu = 0;
  do {
    menu = MenuPrincipal();
    switch (menu) {
      case 1:
        gradosAFahrenheit();
        break;
      case 2:
        fahrenheitAGrados();
        break;
      case 3:
        break;
      default:
        print('No existen esas opciones');
    }
  } while (menu != 3);
}
