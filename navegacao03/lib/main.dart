import "package:flutter/material.dart";

main() {
  runApp(MaterialApp(
    home: CorpoAplicativo(),
  ));
}

class CorpoAplicativo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Macaco puto das calças"),
      ),
      body: Center(
        child: Column(
          children: [

            Image.asset(
              "lib/img/macaco.gif",
              height: altura * 0.8,
              width: largura * 0.8,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => SegundaTela()),
                );
              }, 
              child: Text("Próxima imagem"),
            ),

          ],
        )
      ),
    ); 
  }
}

class SegundaTela extends StatelessWidget {
  Widget build(BuildContext context) {

    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        title: Text("Macaco atendimento ao público"),
      ),
      body: Center(
        child: Column(
          children: [

              Image.asset(
              "lib/img/macacoTelemarketing.gif",
              height: altura * 0.8,
              width: largura * 0.8,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              child: Text("Voltar"),
            ),

          ],
        ),
      ),

    );
  }
}