import 'dart:io';

import 'dart:math';

int getPlayerMove() {
  var entrada = int.parse(stdin.readLineSync());

  if (entrada == 1) {
    print('piedra');
  } else if (entrada == 2) {
    print('papel');
  } else if (entrada == 3) {
    print('tijera');
  } else {
    print('Opción invalida, debes elegir una opción del 1-3');
  }
  return entrada;
}

int getComputerMove() {
  var numero = Random().nextInt(3) + 1;
  if (numero == 1) {
    print('''vs 
piedra''');
  } else if (numero == 2) {
    print('''vs 
papel''');
  } else if (numero == 3) {
    print(''' vs 
tijera''');
  }
  return numero;
}

whoWon(int election, int computerElection) {
  if (election == computerElection) {
    print('Empate');
  } else if (election == 1 && computerElection == 2) {
    print('Has perdido');
  } else if (election == 1 && computerElection == 3) {
    print('Has ganado');
  } else if (election == 2 && computerElection == 1) {
    print('Has ganado');
  } else if (election == 2 && computerElection == 3) {
    print('Has perdido');
  } else if (election == 3 && computerElection == 1) {
    print('Has perdido');
  } else if (election == 3 && computerElection == 2) {
    print('Has ganado');
  }
}

void main() {
  print('Bienvenido al juego piedra papel o tijera');
  stdout.write(''' 
  - Bienvenido, este es el juego de piedra papel tijera:
  - Para elegir piedra pulse (1);
  - Para elegir papel pulse (2);
  - Para elegir tijera pulse (3);
  ''');

  int player;
  int computer;

  player = getPlayerMove();
  computer = getComputerMove();

  print(whoWon(player, computer));
}
