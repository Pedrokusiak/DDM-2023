class Aluno {
  
  int? RA;
  String? nome;
  String? CPF;
  DateTime? nascimento; //atributo privado

  Aluno.construtorNomimal({ required this.RA, required this.nome, required this.CPF, required this.nascimento});

  Aluno.construtorPadrao(this.RA, this.nome, this.CPF, this.nascimento);

    @override
  String toString() {
    return 'RA: ${RA}, Nome: ${nome}, CPF: ${CPF}, Nascimento ${nascimento}';
  }
}
