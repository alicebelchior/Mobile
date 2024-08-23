import 'package:flutter/material.dart';
import 'menu.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Lutas Impossíveis',
			theme: ThemeData(
				primarySwatch: Colors.blue,
			),
			home: const ImageListScreen(),
		);
	}
}



class ImageListScreen extends StatelessWidget {
  const ImageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Calcula 10% da largura da tela
    final double ladosPadding = MediaQuery.of(context).size.width * 0.1;
    final double imagemWidth = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      
	  appBar: AppBar(
        title: const Center(
          child: Text('MONSTROS DE FILME DE TERROR'),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
	  
      body: Padding(
        // Inserindo o espaço de 10% pelos lados da janela.
        padding: EdgeInsets.symmetric(horizontal: ladosPadding),
        
		// Aqui está centralizando na vertical.
		child: Center( 
          child: Column(
		  
		   // Evita que o conteúdo ultrapasse os limites da tela
            mainAxisSize: MainAxisSize.min, 
            
			children: [
					Padding(
							padding: const EdgeInsets.symmetric(vertical: 8.0),
							child: InkWell(
									onTap: () {

										// Navega para a segunda tela quando a linha é tocada
										Navigator.push(
											context,
											MaterialPageRoute(
												builder: (context) => const Menu(),
											),
										);
									},
								  
								child: Row(
										children: [

											// Alinha a imagem à esquerda dentro do espaço disponível
											Image.asset(
												'lib/img/gif.gif',
												width: imagemWidth,
											),

											// Espaçamento entre imagem e texto
											const SizedBox(width: 16.0),

											// Alinha o texto à direita dentro do espaço restante
											const Expanded(
											child: Text(
													'CLIQUE SE TIVER CORAGEM',
													textAlign: TextAlign.right,
												),
											),
										],
									),
								),
							),
						],
					),
				),
			),
		);
	}
}
