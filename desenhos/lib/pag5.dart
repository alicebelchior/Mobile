import 'package:flutter/material.dart';


class Pag5 extends StatelessWidget {
const Pag5({super.key});

	@override
	Widget build(BuildContext context) {

	return Scaffold(
			appBar: AppBar(
				title: const Text('GHOSTFACE - PÂNICO'),
					backgroundColor: Colors.black,
					foregroundColor: Colors.white,
			),

			body: Center(
				child: Image.asset(
					'lib/img/Ghostface.jpg',
				),
			),
		);
	}
}
