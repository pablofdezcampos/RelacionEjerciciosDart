import 'dart:math';

int minArray(List list) {
  int comparator = list[0];
  int min;

  for (int numero in list) {
    if (numero < comparator) {
      min = numero;
    }
  }
  return (min);
}

int maxArray(List list) {
  int comparator = list[0];
  int max;

  for (var numero in list) {
    if (numero > comparator) {
      max = numero;
    }
  }
  return (max);
}

double mediaArray(List list) {
  int sum;
  double average;

  for (var numero in list) {
    sum = sum + numero;
  }
  average = sum / list.length;
  return (average);
}

int modaArray(List list) {
  int contador = 0;
  int moda;

  for (var number in list) {
    var contandorNumber = 0;
    for (var numero in list) {
      if (number == numero) {
        contandorNumber++;
      }
    }
    if (contandorNumber > contador) {
      contador = contandorNumber;
      moda = number;
    }
  }
  return moda;
}

void main(List<String> args) {
  var list = [];
  var number = Random();

  for (var i = 0; i < 10; i++) {
    list.add(number.nextInt(100));
  }
  print(list);
  modaArray(list);
}
