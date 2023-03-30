import '../lib/Aula 04/Classes/aluno.dart';
import '../lib/Aula 04/Classes/professor.dart';
import '../lib/Aula 04/Classes/alunoComFuncao.dart';

void minhaFuncao() {
  print("buscar livro");
}

String? printaNome(Professor professor){
  String? nome = professor.nome;
  return nome;
}

void main(List<String> arguments) {

  //EXPLICAÇÃO E EXEMPLOS FORNECIDOS ANTES DO INICIO DA LISTA
  var aluno = Aluno.construtorNomimal(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now());

  var aluno2 = Aluno.construtorPadrao(12345678910,
      "Felipe Adrian da Hora de Arruda 2", "000.000.000-10", DateTime.now());

  var alunoComFuncaoNomeada = AlunoComFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: minhaFuncao);

  var alunoComFuncaoAnonima = AlunoComFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: () {
        print("object");
      });

  var alunoComArrowFunction = AlunoComFuncao(
      RA: 123456789,
      nome: "Felipe Adrian da Hora de Arruda",
      CPF: "000.000.000-00",
      nascimento: DateTime.now(),
      minhaFuncao: () => print("object")
      );

  /* print("${aluno.nome} \n ${aluno.CPF} \n ${aluno.RA} \n ${aluno.nascimento} \n");
  print("${aluno2.nome} \n ${aluno2.CPF} \n ${aluno2.RA} \n ${aluno2.nascimento} \n");
  print("${alunoComFuncao.nome} \n ${alunoComFuncao.CPF} \n ${alunoComFuncao.RA} \n ${alunoComFuncao.nascimento} \n");
  print("${alunoComFuncao2.nome} \n ${alunoComFuncao2.CPF} \n ${alunoComFuncao2.RA} \n ${alunoComFuncao2.nascimento} \n");*/





  //INICIO DA LISTA DE EXERCICIOS
  print("${Aluno.construtorNomimal(RA: 123456789, nome: "Felipe Adrian da Hora de Arruda", CPF: "000.000.000-00", nascimento: DateTime.now())}"); //1.4

  var professorParametrosFuncaoNomeada = Professor(SIAPE: 123456, nome: "teacher", CPF: "222.222.222-22", nascimento: DateTime.now(), dataEntrada: DateTime.now(), funcaoPrintaNome: printaNome);
  var professorParametroFuncaoAnonima = Professor(SIAPE: 123456, nome: "teacher", CPF: "222.222.222-22", nascimento: DateTime.now(), dataEntrada: DateTime.now(), funcaoPrintaNome: (){print("nome");});
  var professorParametroArrowFunction = Professor(SIAPE: 123456, nome: "teacher", CPF: "222.222.222-22", nascimento: DateTime.now(), dataEntrada: DateTime.now(), funcaoPrintaNome: ()=> print('nome'));

  print('${Professor(SIAPE: 123456, nome: "teacher", CPF: "222.222.222-22", nascimento: DateTime.now(), dataEntrada: DateTime.now(), funcaoPrintaNome: () {
            print("nome");
          })}');
  print('${Professor(SIAPE: 654321, nome: "teacher2", CPF: "333.333.333-33", nascimento: DateTime.now(), dataEntrada: DateTime.now(), funcaoPrintaNome: printaNome)}');
  print('${Professor(SIAPE: 789101112, nome: "teacher3", CPF: "444.444.444-44", nascimento: DateTime.now(), dataEntrada: DateTime.now(), funcaoPrintaNome: ()=> print('nome'))}');

}
