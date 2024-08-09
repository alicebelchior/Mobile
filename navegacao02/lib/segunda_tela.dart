import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  const SegundaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            title: const Text("Tela Secundária 1"),
        ),

        body: Center(

            child: ElevatedButton(
                onPressed: () {
                    Navigator.pop(context);
            },
            child: const Text("Voltar para a Tela Inicial"),
            ),
        ),
    );
  }
}
