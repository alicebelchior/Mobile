import 'package:flutter/material.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return const MaterialApp(
			home: ConfiguraImagem(),
		);
	}
}


class ConfiguraImagem extends StatefulWidget {
  const ConfiguraImagem({super.key});

		@override
		createState() => ConfiguraImagemStatus();
	}


class ConfiguraImagemStatus extends State<ConfiguraImagem> {
		bool exibiImagem = true;
		bool bordasArredondadas = false; int? _bordasArredondadas;
		bool fundoColorido = false; Color? _fundoColorido;
		bool tipoBorda = false; int? _tipoBorda;
		bool tamanhoFigura = false; int? _tamanhoFigura;
		bool exibeTexto = false;
		bool tamanhoTexto = false; int? _tamanhoTexto;

	@override
	Widget build(BuildContext context) {
		

		if (  tamanhoFigura ) {
		  _tamanhoFigura = 200;
		} else {
		  _tamanhoFigura = 150;
		}


		if (  fundoColorido ) {
		  _fundoColorido = Colors.yellow;
		} else {
		  _fundoColorido = Colors.transparent;
		}
		
		
		if (  tipoBorda  ) {
		  _tipoBorda = 8;
		} else {
		  _tipoBorda = 2;
		}
		

		if (  bordasArredondadas  ) {
		  _bordasArredondadas = 20;
		} else {
		  _bordasArredondadas = 0;
		}
		
		
		if (  tamanhoTexto ) {
		  _tamanhoTexto = 24;
		} else {
		  _tamanhoTexto = 14;
		}
		
		
		
		
		return Scaffold(
				appBar: AppBar(
					title: const Text('Modificador de Definições'),
			),
			
			body: Column(
				mainAxisAlignment: MainAxisAlignment.center,
				
				children: [
				
					// Exemplo de imagem modificável
					if (exibiImagem)
						
						Container(
						width: _tamanhoFigura as double,
						height: _tamanhoFigura as double,
						
						decoration: BoxDecoration(
							color: _fundoColorido as Color,
							border: Border.all(
								color: Colors.black,
								width: _tipoBorda as double, 
							),
							borderRadius: BorderRadius.circular(_bordasArredondadas as double),
						),
						
            //Aqui existe uma comparação, se(?) exibeTexto executa o que aparece após o "?" senão exibe depois do ":"
						child: Center(
							child: exibeTexto
							? Text(
								'Texto',
								style: TextStyle(
								  fontSize: _tamanhoTexto as double, // Alterna entre fonte grande e pequena
								  fontWeight: FontWeight.bold,
								),
							)
							: null,
						),
						
					),
					const SizedBox(height: 20),

					// Switch para exibir ou ocultar a imagem
					SwitchListTile(
						title: const Text('Exibir Imagem'),
						value: exibiImagem,
						onChanged: (value) {
							setState(() {
								exibiImagem = value;
							});
						},
					),

					// Switch para bordas arredondadas
					SwitchListTile(
						title: const Text('Bordas Arredondadas'),
						value: bordasArredondadas,
						onChanged: (value) {
							setState(() {
								bordasArredondadas = value;
							});
						},
					),

					// Switch para fundo colorido
					SwitchListTile(
						title: const Text('Fundo Colorido'),
						value: fundoColorido,
						onChanged: (value) {
							setState(() {
								fundoColorido = value;
							});
						},
					),

					// Switch para bordas espessas
					SwitchListTile(
						title: const Text('Bordas Espessas'),
						value: tipoBorda,
						onChanged: (value) {
							setState(() {
								tipoBorda = value;
							});
						},
					),

					// Switch para imagem de tamanho grande ou pequeno
					SwitchListTile(
						title: const Text('Imagem com Tamanho Grande'),
						value: tamanhoFigura,
						onChanged: (value) {
							setState(() {
								tamanhoFigura = value;
							});
						},
					),

					// Switch para exibir ou ocultar texto
					SwitchListTile(
						title: const Text('Exibir Texto'),
						value: exibeTexto,
						onChanged: (value) {
							setState(() {
								exibeTexto = value;
							});
						},
					),

					// Switch para texto grande ou pequeno
					SwitchListTile(
						title: const Text('Texto Grande'),
						value: tamanhoTexto,
						onChanged: (value) {
							setState(() {
								tamanhoTexto = value;
							});
						},
					),
				],
			),
		);
	}
}