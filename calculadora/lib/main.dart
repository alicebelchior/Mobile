import 'package:flutter/material.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return const MaterialApp(
			home: SomaForm(),
		);
	}
}

class SomaForm extends StatefulWidget {
	const SomaForm({super.key});

	@override
	createState() => OperaSoma();
}


class OperaSoma extends State<SomaForm> {
	// Controladores para os campos de texto
	final TextEditingController controllerNum1 = TextEditingController(); // <<< CAMPO 1 >>
	final TextEditingController controllerNum2 = TextEditingController(); // l <<< CAMPO 2 >>

	String resultado = "";

	void somarValores() {

		// Converte o valor digitado em double
		double? num1 = double.tryParse(controllerNum1.text);
		double? num2 = double.tryParse(controllerNum2.text);

		// Faz a validação, caso o usuário digite algo não número
		if (num1 == null || num2 == null) {
			mostrarErro(); // <<< Executa validação dos campos
		} else {
			// Se os valores forem válidos faz a soma
			double soma = num1 + num2;
			setState(() {

			//Concatena o texto para a exibição.
			resultado = "Resultado: $soma";
			});
		}
	}

	void mostrarErro() {
		showDialog(
			context: context,
			builder: (BuildContext context) {

				return AlertDialog(
					title: const Text("Atenção"),
					content: const Text("Digite somente números nos campos."),

					actions: [
						TextButton(
							onPressed: () {
								Navigator.of(context).pop();
							},
							child: const Text("OK"),
						),
					],

				);
			},
		);
	}


	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text("Formulário de Soma"),
			),
			body: Padding(
				padding: const EdgeInsets.all(16.0),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [

						TextField(
							controller: controllerNum1, //  <<< CAMPO 1 >>
							keyboardType: TextInputType.number,
							decoration: const InputDecoration(
								labelText: "Digite o primeiro número",
							),
						),
						const SizedBox(height: 16),

						TextField(
							controller: controllerNum2, // <<< CAMPO 2 >> 
							keyboardType: TextInputType.number,
							decoration: const InputDecoration(
								labelText: "Digite o segundo número",
							),
						),
						const SizedBox(height: 32),

						ElevatedButton(
							onPressed: somarValores,   //<< BOTÃO >>Executa cálculos
							child: const Text("Somar"),
						),

						const SizedBox(height: 32),
						Text(
							resultado,  //<< Imprime valor, valor calculado em "somarValores"
							style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
						),

					],
				),
			),
		);
	}
}