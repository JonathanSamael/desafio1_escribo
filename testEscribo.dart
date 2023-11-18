import 'dart:io';

functionToCalc(int number) {
  int totalSomatorio = 0;

  for(int value = 1; value < number; value++) {
    if (value % 3 == 0 || value % 5 == 0) {
    totalSomatorio += value;
    }
  }
  return totalSomatorio;
}

void main() {
  stdout.writeln('Digite um número inteiro e positivo: ');
  var value = stdin.readLineSync();

  int numero = int.parse(value!);
  int result = functionToCalc(numero);

  print('Para o valor de $value, o resultado da soma é $result.');
}