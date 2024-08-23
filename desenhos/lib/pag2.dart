import 'package:flutter/material.dart';


class Pag2 extends StatelessWidget {
const Pag2({super.key});

	@override
	Widget build(BuildContext context) {

	return Scaffold(
			appBar: AppBar(
				title: const Text('FREDDY KRUEGER - HORA DO PESADELO'),
					backgroundColor: Colors.black,
					foregroundColor: Colors.white,
			),

			body: Center(
				child: Image.asset(
					'lib/img/Freddy.jpg',
				),
			),
		);
	}
}
