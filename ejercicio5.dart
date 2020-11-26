import 'dart:io';
import 'dart:math';

void main() {
  print(
      'Bienvenido. Esto es un juego. Tienes que adivinar el número que estoy pensando del 1 al 100');

  for (var i = 0; i < 1; i++) {
    var NumeroAleatorio = new Random();
    int aleatorio = NumeroAleatorio.nextInt(100);

    var numero = 101;
    var intentos = 0;

    while (aleatorio != numero) {
      intentos++;

      print('Introduce un número del 1 al 100');
      numero = int.parse(stdin.readLineSync());

      if (aleatorio < numero) {
        print('El número es más pequeño');
      } else if (aleatorio > numero) {
        print('El número es más grande');
      }
      ;
    }
    print('El número es correcto. Ha utilizado un total de $intentos');
  }
}
