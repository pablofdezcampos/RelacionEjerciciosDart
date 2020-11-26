import 'dart:io';

import 'dart:math';

void main(List<String> args) {
  print('Introduzca su elección: Piedra, Papel o Tijera');

  var election = stdin.readLineSync();
  var computer = <String>['piedra', 'papel', 'tijera'];
  var number;

  if (election != 'piedra' && election != 'papel' && election != 'tijera') {
    print('La opción introducida no es correcta');
    print('Introduzca su elección: Piedra, Papel o Tijera');
    election = stdin.readLineSync();
  } else {
    number = Random().nextInt(3);
    computer[number];
    print('Opción elegida $election y el ordenador eligió ${computer[number]}');
  }

  if (election == computer[number]) {
    print('Empate');
  } else {
    if (election == 'piedra' && computer[number] == 'tijera' ||
        election == 'papel' && computer[number] == 'piedra' ||
        election == 'tijera' && computer[number] == 'papel') {
      print('Has ganado');
    } else {
      print('Has perdido');
    }
  }
}
