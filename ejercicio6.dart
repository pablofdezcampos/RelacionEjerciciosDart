void main(List<String> args) {
  var numeros = [1, 2, 3, 4, 5, 6];
  var suma = 0;

  for (var elemento in numeros) {
    suma = suma + elemento;
  }
  print('La suma de la lista es igual a $suma');
  print('La media aritmética es igual a ${suma / numeros.length}');
}
