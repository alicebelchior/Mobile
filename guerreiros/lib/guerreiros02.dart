/*
Crie um script em Dart que deverá simular a montagem de 8 guerreiros para um jogo de RPG, ele deverá armazenar informações(5 características) como peso, força, velocidade, energia, inteligência, idade, nome, local em que nasceu, nacionalidade, etc. Após receber estas informações o script deverá buscar o guerreiro mais velho e fazer com que ele “morra” (seja removido da lista de guerreiros).
*/

class  competidor{
	String nome="";
	int idade=0;
	double peso=0;
	int forca=0;
  int energia=0;
	int inteligencia=0;

	void exibeDadosCompetidores(){
		print("\nNome: $nome");
		print("Idade: $idade anos"); 
		print("Peso: $peso kg");    
		print("Força: $forca N");   
    print("Energia: $energia J"); 
		print("Inteligência: $inteligencia xp");
	}
}

void main(){

	List <competidor> listaCompetidores = [];

	competidor competidor1 = competidor();
	competidor1.nome="Elowen Starshadow";
	competidor1.idade=28;   
	competidor1.peso=50.2;
	competidor1.forca=80;  
  competidor1.energia=100;
  competidor1.inteligencia=95;
	listaCompetidores.add(competidor1);

	competidor competidor2 = competidor();  
	competidor2.nome="Kaelith Duskmantle";
	competidor2.idade=22;   
	competidor2.peso=70.1;
	competidor2.forca=70;  
  competidor2.energia=80;
  competidor2.inteligencia=100;

	competidor competidor3 = competidor();   
	competidor3.nome="Tharion Ironheart";
	competidor3.idade=35;   
	competidor3.peso=85.3;
	competidor3.forca=90;  
  competidor3.energia=90;
  competidor3.inteligencia=80;
	listaCompetidores.add(competidor3);  

	competidor competidor4 = competidor();   
	competidor4.nome="Lysandra Flamewhisper";
	competidor4.idade=38;   
	competidor4.peso=55.6;
	competidor4.forca=60;  
  competidor4.energia=95;
  competidor4.inteligencia=85;
	listaCompetidores.add(competidor4);  

	competidor competidor5 = competidor();   
	competidor5.nome="Zephyrion Mistwalker";
	competidor5.idade=30;   
	competidor5.peso=80.8;
	competidor5.forca=75;  
  competidor5.energia=85;
  competidor5.inteligencia=90;
	listaCompetidores.add(competidor5);

  
}