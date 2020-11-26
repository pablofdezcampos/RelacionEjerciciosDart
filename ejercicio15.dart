bool numeroPrimo(int numero) {
  for (var contador = 2; contador < numero / 2 + 1; contador++) {
    if (numero % contador == 0) {
      return false;
    }
  }
  return true;
}

void main(List<String> args) {
  print(numeroPrimo(5));
  print(numeroPrimo(4));

  var primos = [];
  var i = 2;
  do {
    if (numeroPrimo(i)) {
      primos.add(i);
    }
    i++;
  } while (primos.length < 100);

  print(primos);
}
