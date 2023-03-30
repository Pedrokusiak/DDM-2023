class AlunoComFuncao {
  int? RA;
  String? nome;
  String? CPF;
  DateTime? nascimento; //atributo privado
  Function minhaFuncao;

  AlunoComFuncao(
      {required this.RA,
      required this.nome,
      required this.CPF,
      required this.nascimento,
      required this.minhaFuncao});
}
