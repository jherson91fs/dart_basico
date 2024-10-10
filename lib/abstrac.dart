import 'dart:io';

void main() {
  final calculadora = Calculadora();

  // Solicitar los números al usuario
  print('Ingrese el primer número:');
  double numero1 = double.parse(stdin.readLineSync()!);

  print('Ingrese el segundo número:');
  double numero2 = double.parse(stdin.readLineSync()!);

  // Ejemplos de uso
  print('Suma: ${calculadora.sumar(numero1, numero2)}');
  print('Resta: ${calculadora.restar(numero1, numero2)}');
  print('Multiplicación: ${calculadora.multiplicar(numero1, numero2)}');
}

abstract class Operacion {
  double sumar(double a, double b);
  double restar(double a, double b);
  double multiplicar(double a, double b);
}

class Calculadora implements Operacion {
  @override
  double sumar(double a, double b) {
    return a + b;
  }

  @override
  double restar(double a, double b) {
    return a - b;
  }

  @override
  double multiplicar(double a, double b) {
    return a * b;
  }
}
