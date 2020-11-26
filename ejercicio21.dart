import 'dart:io';

int MenuPrincipal() {
  stdout.write('''
    BIENVENIDO!!!
    En este programa podrá convertir una cadena de texto introducida por usted a las siguientes opciones:
  - Para convetir a mayúsculas pulse (1):
  - Para convertir a minúsculas pulse (2):
  - Para convertir a capitalizada pulse (3):
  - Para salir pulse (4):
  ''');
  print('Eliga una opción del 1-4');
  var menu = stdin.readLineSync();
  return int.parse(menu);
}

String UpperCase() {
  print('Introduce una cadena');
  var entrada = stdin.readLineSync();

  entrada.toUpperCase();

  print(entrada);

  return (entrada);
}

String LowerCase() {
  print('Introduce una cadena');
  var entrada = stdin.readLineSync();

  entrada.toLowerCase();

  print(entrada);

  return entrada;
}

String Capitalice() {
  print('Introduce una cadena');
  var entrada = stdin.readLineSync();

  return entrada[0].toUpperCase() + entrada.substring(1);
}

void main(List<String> args) {
  var menu = 0;

  do {
    menu = MenuPrincipal();
    switch (menu) {
      case 1:
        UpperCase();
        break;
      case 2:
        LowerCase();
        break;
      case 3:
        Capitalice();
        break;
      case 4:
        break;
      default:
        print('No existen esas opciones');
    }
  } while (menu != 4);
}
