import 'package:flutter_test/flutter_test.dart';
import 'package:aplicacaobancaria/models/conta_bancaria.dart';

class TestContaBancaria extends ContaBancaria {
  TestContaBancaria(String numeroConta, double saldoInicial) : super(numeroConta, saldoInicial);
}

void main() {
  test('Depósito em ContaBancaria', () {
    final conta = TestContaBancaria('12345', 1000.0);
    conta.depositar(500.0);
    expect(conta.saldo, 1500.0);
  });

  test('Saque em ContaBancaria', () {
    final conta = TestContaBancaria('12345', 1000.0);
    conta.sacar(400.0);
    expect(conta.saldo, 600.0);
  });

  test('Saque acima do saldo em ContaBancaria', () {
    final conta = TestContaBancaria('12345', 1000.0);
    expect(() => conta.sacar(2000.0), throwsException);
  });
}
