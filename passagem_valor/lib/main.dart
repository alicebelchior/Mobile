import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Tela1(), 
  ));
}

class Tela1 extends StatelessWidget {
	Tela1({super.key});

	// << Atributo >> //Lista estática dentro da classe "Tela1"
	final List<String> items = [
	'Gato', 
	'Macaco', 
	'Cachorro', 
	'Marreco',];


	// Define Visual
	@override
	Widget build(BuildContext context) {
    
		return Scaffold(
			appBar: AppBar(title: const Text('Primeira Tela')),
			
			body: Center(
				child: ElevatedButton(
					onPressed: () {
						Navigator.push(
							context,
							MaterialPageRoute(
							
								// Constrói Nova Tela 
                /*
                Cria um objeto da classe "Tela2", passando como parâmetro a lista de itens. Nesse exemplo a lista ja foi montada la em cima
                */
								builder: (context) => Tela2(items: items),
							),
						);
					},
					child: const Text('Tela 2'),
				),
			),
			
		);
	}
}


class Tela2 extends StatelessWidget {

	final List<String> items; // << Atributo >>
	
  const Tela2({super.key, required this.items}); //<< Construtor >>

	@override
	Widget build(BuildContext context) {  // << Define Visual >>
		return Scaffold(
		
			appBar: AppBar(title: const Text('Tela 2')),
			
			//<< Exibe lista >>
			body: ListView.builder(
				itemCount: items.length,
				itemBuilder: (context, index) {
					return ListTile(
						title: Text(items[index]),
					);
				},
			),
			
		);
	}
}