import 'package:desenhos/pag1.dart';
import 'package:desenhos/pag2.dart';
import 'package:desenhos/pag3.dart';
import 'package:desenhos/pag4.dart';
import 'package:desenhos/pag5.dart';
import 'package:flutter/material.dart';

class MenuItem {
  final String imagem;              // Registra a URL da imagem
  final String textoExibir;         // Registra o texto que deve ser exibido
  final Widget Function() builder;  // Registra a instância do Widget

  MenuItem({
    required this.imagem,
    required this.textoExibir,
    required this.builder,
  });
}


class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lutas Impossíveis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageListScreen(),
    );
  }
}

class ImageListScreen extends StatelessWidget {
  final List<MenuItem> items = [
    MenuItem(imagem: 'lib/img/chucky.jpg', textoExibir: 'Chucky', builder: () => const Pag1()),
    MenuItem(imagem: 'lib/img/Freddy.jpg', textoExibir: 'Freddy Krueger', builder: () => const Pag2()),
    MenuItem(imagem: 'lib/img/Jason.jpg', textoExibir: 'Jason Voorhees', builder: () => const Pag3()),
    MenuItem(imagem: 'lib/img/Michael.jpg', textoExibir: 'Michael Myers', builder: () => const Pag4()),
    MenuItem(imagem: 'lib/img/Ghostface.jpg', textoExibir: 'Ghostface', builder: () => const Pag5()),
  ];

  ImageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Calcula 10% da largura da tela
    final double ladosPadding = MediaQuery.of(context).size.width * 0.1;
    final double imagemWidth = MediaQuery.of(context).size.width * 0.2;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lutas Impossíveis'),
      ),
      body: Padding(

        //INserindo o espaço de 10% pelos lados da janela.
        padding: EdgeInsets.symmetric(horizontal: ladosPadding), 
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),

              child: InkWell(
									onTap: () {

										// Navega para a segunda tela quando a linha é tocada
										Navigator.push(
											context,
											MaterialPageRoute(
												builder: (context) => items[index].builder(),
											),
										);
									},

              child: Row(
                
                children: [
                  
                  // Alinha a imagem à esquerda dentro do espaço disponível
                  Image.asset(
                    items[index].imagem,
                    width: imagemWidth,
                  ),

                  // Espaçamento entre imagem e texto
                  const SizedBox(width: 16.0),

                  // Alinha o texto à direita dentro do espaço restante
                  Expanded(
                    child: Text(
                      items[index].textoExibir,
                      textAlign: TextAlign.right,
                    ),
                  ),

                ],

              ),
            ));
          },

        ),
      ),

    );
  }
}
