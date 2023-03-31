import 'Pessoa.dart';

class Empregador extends Pessoa {
  String cnpj;
  String razaoSocial;

  Empregador({
    required String nome,
    required String cpf,
    required String email,
    required String telefone,
    required this.cnpj,
    required this.razaoSocial,
  }) : super(nome: nome, cpf: cpf, email: email, telefone: telefone);
}
