import 'package:flutter/material.dart';


class Pag1 extends StatelessWidget {
const Pag1({super.key});

	@override
	Widget build(BuildContext context) {

	return Scaffold(
			appBar: AppBar(
				title: const Text('CHUCKY - BONECO ASSASSINO'),
					backgroundColor: Colors.black,
					foregroundColor: Colors.white,
			),

			body: Center(
				child: Image.asset(
					'lib/img/chucky.jpg',
				),
			),
		);
	}
}
