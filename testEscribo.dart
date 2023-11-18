import 'dart:io';

functionToCalc(int number) {
  int totalSum = 0;

  for (int value = 1; value < number; value++) {
    if (value % 3 == 0 || value % 5 == 0) {
      totalSum += value;
    }
  }

  return totalSum;
}

void main() {
  stdout.writeln('Digite um número inteiro e positivo: ');
  var inputNumber = stdin.readLineSync();

  int value = int.parse(inputNumber!);
  if (value > 0) {
    int result = functionToCalc(value);
    print('Para o valor de $value, o resultado da soma é $result.');
  } else {
    print('O valor digitado é inválido, digite um número inteiro positivo');
  }
}
