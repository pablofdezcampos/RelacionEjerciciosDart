import 'dart:math';

void main(List<String> args) {
  var numerosLista = [];
  var numerosGenerados = 0;

  while (numerosLista.length < 100) {
    var numerosGenerados = Random().nextInt(100);

    if (!numerosLista.contains(numerosGenerados)) {
      numerosLista.add(numerosGenerados);
    }
  }
  print(numerosLista);
}
