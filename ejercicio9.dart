void main(List<String> args) {
  var npersonas = 13;
  var salto = 3;
  var personas = [];

  for (var i = 1; i < npersonas; i++) {
    personas.add(i);
  }
  print(personas);

  var contador = 0;

  while (personas.length > 1) {
    contador = (contador + salto) % personas.length;
    print('Persona eliminada ${personas[contador]}');
    personas.removeAt(contador);
  }
  print('La persona que ha quedado viva es $personas');
}
