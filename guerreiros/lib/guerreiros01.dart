/*
Crie um script em Dart que deverá simular a montagem de 5 guerreiros para um jogo de RPG, ele deverá armazenar informações(oito características) como peso, força, velocidade, energia, inteligência, idade, nome, local em que nasceu, nacionalidade, etc. Após receber estas informações o script deverá listar os dados recebidos.
*/

class  competidor{
	String nome="";
	int idade=0;
	double peso=0;
	int forca=0;
	double velocidade=0; 
  int energia=0;
	String localNascim="";
	String nacionalidade="";

	void exibeDadosCompetidores(){
		print("\nNome: $nome");
		print("Idade: $idade anos"); 
		print("Peso: $peso kg");    
		print("Força: $forca N");   
		print("Velocidade: $velocidade km/h");      
    print("Energia: $energia J"); 
		print("Local de nascimento: $localNascim");   
		print("Nacionalidade: $nacionalidade");
	}
}

void main(){

	List <competidor> listaCompetidores = [];

	competidor competidor1 = competidor();
	competidor1.nome="Elowen Starshadow";
	competidor1.idade=28;   
	competidor1.peso=50.2;
	competidor1.forca=80;  
	competidor1.velocidade=20.3;  
  competidor1.energia=100;
  competidor1.localNascim="Vale da Nebulosa";
  competidor1.nacionalidade="Elfa dos Ventos";
	listaCompetidores.add(competidor1);

	competidor competidor2 = competidor();  
	competidor2.nome="Kaelith Duskmantle";
	competidor2.idade=22;   
	competidor2.peso=70.1;
	competidor2.forca=70;  
	competidor2.velocidade=90.7;  
  competidor2.energia=80;
  competidor2.localNascim="Cidade dos Sussurros";
  competidor2.nacionalidade="Mago da Sombras";
	listaCompetidores.add(competidor2);

	competidor competidor3 = competidor();   
	competidor3.nome="Tharion Ironheart";
	competidor3.idade=35;   
	competidor3.peso=85.3;
	competidor3.forca=90;  
	competidor3.velocidade=74.6;  
  competidor3.energia=90;
  competidor3.localNascim="Montanhas de Gelo Eterno";
  competidor3.nacionalidade="Guerreiro dos Climas Frios";
	listaCompetidores.add(competidor3);  

	competidor competidor4 = competidor();   
	competidor4.nome="Lysandra Flamewhisper";
	competidor4.idade=38;   
	competidor4.peso=55.6;
	competidor4.forca=60;  
	competidor4.velocidade=88.7;  
  competidor4.energia=95;
  competidor4.localNascim="Floresta do Crepúsculo";
  competidor4.nacionalidade="Guardiã das Chamas";
	listaCompetidores.add(competidor4);  

	competidor competidor5 = competidor();   
	competidor5.nome="Zephyrion Mistwalker";
	competidor5.idade=30;   
	competidor5.peso=80.8;
	competidor5.forca=75;  
	competidor5.velocidade=80.0;  
  competidor5.energia=85;
  competidor5.localNascim="Reino das Nuvens Flutuantes";
  competidor5.nacionalidade="Explorador dos Céus";
	listaCompetidores.add(competidor5);

	for(int contaIndice=0; contaIndice<listaCompetidores.length; contaIndice++)
	{
		listaCompetidores[contaIndice].exibeDadosCompetidores();
	}
}