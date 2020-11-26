import 'dart:math';

void main(List<String> args) {
  var winners = [];
  var number = 0;

  while (winners.length < 100) {
    number = Random().nextInt(1000);
    if (!winners.contains(number)) {
      winners.add(number);
    }
  }
  print(winners);
}
