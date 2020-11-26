import 'dart:io';

int calcularFactorial() {
  var number = int.parse(stdin.readLineSync());

  var factorial = 1;

  for (var i = 2; i <= number; i++) {
    factorial = factorial * i;
  }
  print('El factorial del número introducido es $factorial');

  if (number < 0) {
    print('El factorial de 0 o un número negativo es incorrecto');
  }
  return factorial;
}

void main(List<String> args) {
  stdout.write('Introduce un número para calcular su factorial');
  var number = calcularFactorial();
}
