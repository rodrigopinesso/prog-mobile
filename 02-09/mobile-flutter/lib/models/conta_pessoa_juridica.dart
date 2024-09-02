import 'conta_bancaria.dart';

class ContaPessoaJuridica extends ContaBancaria {
  String cnpj;

  ContaPessoaJuridica(String numeroConta, this.cnpj, double saldoInicial)
      : super(numeroConta, saldoInicial);

  @override
  void mostrarSaldo() {
    print("O saldo da conta PJ $numeroConta (CNPJ: $cnpj) é: R\$ $saldo");
  }
}
