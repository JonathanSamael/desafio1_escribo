# Primeiro Desafio - Escribo

O desafio consiste em criar uma função que receba um número inteiro positivo e retorne o somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado.

para rodar o arquivo basta fazer o <strong>clone do repositório ou download da pasta</strong> e executar o código no terminal com: ```dart testEscribo.dart``` 

No arquivo 'testEscribo.dart', contém uma função functionToCalc()  
```dart  
functionToCalc(int number) {
  int totalSum = 0;

  for (int value = 1; value < number; value++) {
    if (value % 3 == 0 || value % 5 == 0) {
      totalSum += value;
    }
  }

  return totalSum;
}
```
Dessa forma a função recebe um valor que será comparado dentro do looping for, assim fazendo a verificação com cada valor entre 1 e o valor inserido e os valores que passarem no teste de divisão por 3 ou 5 são adicionados a soma total (totalSum).
Por fim, o valor de final de totalSum é retornado.

### Função main()

Usando a biblioteca dart:io; Podemos receber os dados que o usuário digita, salvar em inputNumber, nesse caso, como recebemos uma String, convertemos o valor para inteiro com o método ```int.parse```.
Nesse ponto, uma validação é necessária para verificar se o valor recebido é maior que 0. Se não for, uma mensagem é enviada, informando que o valor é inválido.
Caso o valor seja válido, é realizado o calculo pela ```functionToCalc``` e é mostrado o resultado final.
```dart  
void main() {
  stdout.writeln('Digite um número inteiro e positivo: ');
  String? inputNumber = stdin.readLineSync();

  int value = int.parse(inputNumber!);
  if (value > 0) {
    int result = functionToCalc(value);
    print('Para o valor de $value, o resultado da soma é $result.');
  } else {
    print('O valor digitado é inválido, digite um número inteiro positivo');
  }
}
```
