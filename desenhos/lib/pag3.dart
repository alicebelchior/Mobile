import 'package:flutter/material.dart';


class Pag3 extends StatelessWidget {
const Pag3({super.key});

	@override
	Widget build(BuildContext context) {

	return Scaffold(
			appBar: AppBar(
				title: const Text('JASON VOORHEES - SEXTA-FEIRA 13'),
					backgroundColor: Colors.black,
					foregroundColor: Colors.white,
			),

			body: Center(
				child: Image.asset(
					'lib/img/Jason.jpg',
				),
			),
		);
	}
}
