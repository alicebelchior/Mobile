import 'package:flutter/material.dart';


class Pag4 extends StatelessWidget {
const Pag4({super.key});

	@override
	Widget build(BuildContext context) {

	return Scaffold(
			appBar: AppBar(
				title: const Text('MICHAEL MYERS - HALLOWEEN'),
					backgroundColor: Colors.black,
					foregroundColor: Colors.white,
			),

			body: Center(
				child: Image.asset(
					'lib/img/Michael.jpg',
				),
			),
		);
	}
}
