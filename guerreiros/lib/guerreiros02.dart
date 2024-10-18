/*
Crie um script em Dart que deverá simular a montagem de 8 guerreiros para um jogo de RPG, ele deverá armazenar informações(5 características) como peso, força, velocidade, energia, inteligência, idade, nome, local em que nasceu, nacionalidade, etc. Após receber estas informações o script deverá buscar o guerreiro mais velho e fazer com que ele “morra” (seja removido da lista de guerreiros).
*/

class competidor {
  String nome = "";
  int idade = 0;
  double peso = 0;
  int forca = 0;
  int energia = 0;
  int inteligencia = 0;

  void exibeDadosCompetidores() {
    print("\nNome: $nome");
    print("Idade: $idade anos");
    print("Peso: $peso kg");
    print("Força: $forca N");
    print("Energia: $energia J");
    print("Inteligência: $inteligencia xp");
  }
}

void main() {
  
  List<competidor> listaCompetidores = [];

  competidor competidor1 = competidor();
  competidor1.nome = "Elowen Starshadow";
  competidor1.idade = 28;
  competidor1.peso = 50.2;
  competidor1.forca = 80;
  competidor1.energia = 100;
  competidor1.inteligencia = 95;
  listaCompetidores.add(competidor1);

  competidor competidor2 = competidor();
  competidor2.nome = "Kaelith Duskmantle";
  competidor2.idade = 22;
  competidor2.peso = 70.1;
  competidor2.forca = 70;
  competidor2.energia = 80;
  competidor2.inteligencia = 100;

  competidor competidor3 = competidor();
  competidor3.nome = "Tharion Ironheart";
  competidor3.idade = 35;
  competidor3.peso = 85.3;
  competidor3.forca = 90;
  competidor3.energia = 90;
  competidor3.inteligencia = 80;
  listaCompetidores.add(competidor3);

  competidor competidor4 = competidor();
  competidor4.nome = "Lysandra Flamewhisper";
  competidor4.idade = 38;
  competidor4.peso = 55.6;
  competidor4.forca = 60;
  competidor4.energia = 95;
  competidor4.inteligencia = 85;
  listaCompetidores.add(competidor4);

  competidor competidor5 = competidor();
  competidor5.nome = "Zephyrion Mistwalker";
  competidor5.idade = 30;
  competidor5.peso = 80.8;
  competidor5.forca = 75;
  competidor5.energia = 85;
  competidor5.inteligencia = 90;
  listaCompetidores.add(competidor5);

  competidor competidor6 = competidor();
  competidor6.nome = "Orin Shadowfist";
  competidor6.idade = 27;
  competidor6.peso = 72.0;
  competidor6.forca = 85;
  competidor6.energia = 88;
  competidor6.inteligencia = 78;
  listaCompetidores.add(competidor6);

  competidor competidor7 = competidor();
  competidor7.nome = "Seraphina Moonlight";
  competidor7.idade = 31;
  competidor7.peso = 58.5;
  competidor7.forca = 65;
  competidor7.energia = 90;
  competidor7.inteligencia = 95;
  listaCompetidores.add(competidor7);

  competidor competidor8 = competidor();
  competidor8.nome = "Dorian Stormbringer";
  competidor8.idade = 29;
  competidor8.peso = 77.2;
  competidor8.forca = 82;
  competidor8.energia = 85;
  competidor8.inteligencia = 88;
  listaCompetidores.add(competidor8);

  //Exibição dos jogadores
  int indiceMaiorIdade = 0;
  for (int i = 0; i < listaCompetidores.length; i++) {
    if (listaCompetidores[i].idade > listaCompetidores[indiceMaiorIdade].idade) {
      indiceMaiorIdade = i;  //o mais velho vai pegar o indice do competidor (dsd q seja o mais velho)
    listaCompetidores[i].exibeDadosCompetidores();
    }
  }

  //remover o mais velho
  listaCompetidores.removeAt(indiceMaiorIdade);

  //Exibição dos jogadores mais velhos
  print("Os jogadores mais velhos que morreram foram: ");
  for (int i = 0; i < listaCompetidores.length; i++) {
    listaCompetidores[i].exibeDadosCompetidores();
  }
}
