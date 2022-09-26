  void main() {
  
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome 
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  print('1 - Remova os pacientes duplicados e apresente a nova lista');

  final pessoasSemDuplicidade = pessoas.toSet().toList();
  print('Nova lista: $pessoasSemDuplicidade');
  
  print('');
  print('2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');

  final sexoMasc = [];
  final sexoFem = [];

  for(var pessoa in pessoasSemDuplicidade) {
    final dadosPessoa = pessoa.split('|');
    final sexoPessoa = dadosPessoa[2];
    
    if(sexoPessoa.toLowerCase() == 'masculino') {
      sexoMasc.add(dadosPessoa[0]);
    }

    if(sexoPessoa.toLowerCase() == 'feminino') {
      sexoFem.add(dadosPessoa[0]);
    }

  }
  print('A quantidade de pessoas do sexo masculino é de ${sexoMasc.length} pessoas');
  print('E os nomes são: $sexoMasc');

  print('');

  print('A quantidade de pessoas do sexo feminino é de ${sexoFem.length} pessoas');
  print('E os nomes são: $sexoFem');


  print('');
  print('3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');
  
  final maiorDeDezoito = [];

  for(var pessoa in pessoasSemDuplicidade) {
    final dadosPessoa = pessoa.split('|');
    final idadePessoa = int.parse(dadosPessoa[1]);

    if(idadePessoa > 18) {
      maiorDeDezoito.add(dadosPessoa[0]);
    }

  }
  print('As pessoas maiores de dezoito anos são: $maiorDeDezoito');

  print('');
  print('4 - Encontre a pessoa mais velha e apresente o nome dela.');

  final pessoasSemDuplicidado = pessoas.toSet().map((e) => e.split('|')).toList();
  final pessoasOrdenada = [...pessoasSemDuplicidado];
  pessoasOrdenada.sort((p1, p2) {
    final idadeP1 = int.tryParse(p1[1]) ?? 0;
    final idadeP2 = int.tryParse(p2[1]) ?? 0;
    return idadeP2.compareTo(idadeP1);
  });
  final pessoaMaisVelha = pessoasOrdenada.first;
  print('A pessoa mais velha é ${pessoaMaisVelha[0]} e tem ${pessoaMaisVelha[1]} anos');
}