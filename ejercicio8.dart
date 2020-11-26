import 'dart:io';
import 'dart:math';

int LeerEntradaNumeros() {
  stdout.write('Introduce el filtro');
  var entrada = stdin.readLineSync();
  var filtroNumeros = int.parse(entrada);
  return filtroNumeros;
}

List<int> generarLista() {
  var lista = <int>[];

  for (var i = 0; i < 50; i++) {
    lista.add(Random().nextInt(100));
  }
  return lista;
}

void imprimirLista(list) {
  list.forEach((e) {
    print(e);
  });
}

void main(List<String> args) {
  var lista = generarLista();
  var usuario = LeerEntradaNumeros();
  var listaMayores = [];
  lista.forEach((e) => {if (e > usuario) listaMayores.add(e)});
  imprimirLista(listaMayores);
}
