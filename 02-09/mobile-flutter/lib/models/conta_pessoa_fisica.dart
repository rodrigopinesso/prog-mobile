import 'conta_bancaria.dart';

class ContaPessoaFisica extends ContaBancaria {
  String cpf;

  ContaPessoaFisica(String numeroConta, this.cpf, double saldoInicial)
      : super(numeroConta, saldoInicial);

  @override
  void mostrarSaldo() {
    print("O saldo da conta PF $numeroConta (CPF: $cpf) é: R\$ $saldo");
  }
}
