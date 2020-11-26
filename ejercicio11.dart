double aproximacionPi(limite) {
  var suma = 0.0;
  for (var i = 1; i < limite; i++) {
    //podemos quitar el if por suma += pow(-1, i) * 1 / ((i*2) - 1);
    if (i % 2 == 0) {
      suma -= (1 / (i * 2) - 1);
    } else {}
    suma += (1 / (i * 2) - 1);
    //2*1 = 2 + 1 = 1 || 2*2 = 4 + 1 = 5; Fraccion completa
  }
  return suma * 4; // Nos pide PI, por eso PI/4 * 4 = PI;
}

void main(List<String> args) {
  print(aproximacionPi(50));
}
