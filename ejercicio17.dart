import 'dart:io';

void main(List<String> args) {
  print('Introduzca el número al que vamos a calcular su factorial');
  var numero = int.parse(stdin.readLineSync());
  var factorial = 1;

  //Versión iterativa
  if (numero < 0) {
    print('No existe el factorial de un número negativo');
  } else {
    for (var i = 1; i <= numero; i++) {
      factorial = factorial * i;
    }
  }
  print('El factorial de $numero es $factorial');

  //Versión recursiva

  double factor(number) {
    if (numero < 0) {
      print('No existe el factorial de un número negativo');
    } else {
      return (number * factor(number - 1));
    }
  }
}
