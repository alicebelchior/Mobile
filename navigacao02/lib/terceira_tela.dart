import 'package:flutter/material.dart';

class TerceiraTela extends StatelessWidget {
  const TerceiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Tela Secundária 2"),
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
