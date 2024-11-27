import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Tela1(),
  ));
}

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  _Tela1State createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  // Configurações da imagem
  bool exibiImagem = true;
  bool bordasArredondadas = false;
  bool fundoColorido = false;
  bool tipoBorda = false;
  bool tamanhoFigura = false;
  bool exibeTexto = false;
  bool tamanhoTexto = false;

  // Valores das configurações
  double _tamanhoFigura = 150.0;
  double _tamanhoTexto = 14.0;
  Color _fundoColorido = Colors.transparent;
  int _bordasArredondadas = 0;
  double _tipoBorda = 2.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Configurações')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Switches para as configurações
            SwitchListTile(
              title: const Text('Exibir Imagem'),
              value: exibiImagem,
              onChanged: (value) {
                setState(() {
                  exibiImagem = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Bordas Arredondadas'),
              value: bordasArredondadas,
              onChanged: (value) {
                setState(() {
                  bordasArredondadas = value;
                  _bordasArredondadas = value ? 20 : 0;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Fundo Colorido'),
              value: fundoColorido,
              onChanged: (value) {
                setState(() {
                  fundoColorido = value;
                  _fundoColorido = value ? Colors.yellow : Colors.transparent;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Bordas Espessas'),
              value: tipoBorda,
              onChanged: (value) {
                setState(() {
                  tipoBorda = value;
                  _tipoBorda = value ? 8.0 : 2.0;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Imagem com Tamanho Grande'),
              value: tamanhoFigura,
              onChanged: (value) {
                setState(() {
                  tamanhoFigura = value;
                  _tamanhoFigura = value ? 200.0 : 150.0;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Exibir Texto'),
              value: exibeTexto,
              onChanged: (value) {
                setState(() {
                  exibeTexto = value;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Texto Grande'),
              value: tamanhoTexto,
              onChanged: (value) {
                setState(() {
                  tamanhoTexto = value;
                  _tamanhoTexto = value ? 24.0 : 14.0;
                });
              },
            ),

            // Botão para navegar até a tela 2 com as configurações
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Tela2(
                      exibiImagem: exibiImagem,
                      bordasArredondadas: bordasArredondadas,
                      fundoColorido: fundoColorido,
                      tipoBorda: tipoBorda,
                      tamanhoFigura: tamanhoFigura,
                      exibeTexto: exibeTexto,
                      tamanhoTexto: tamanhoTexto,
                      tamanhoFiguraValor: _tamanhoFigura,
                      tamanhoTextoValor: _tamanhoTexto,
                      bordasArredondadasValor: _bordasArredondadas,
                      tipoBordaValor: _tipoBorda,
                      fundoColoridoValor: _fundoColorido,
                    ),
                  ),
                );
              },
              child: const Text('Carregar'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  // Recebendo as configurações passadas da Tela1
  final bool exibiImagem;
  final bool bordasArredondadas;
  final bool fundoColorido;
  final bool tipoBorda;
  final bool tamanhoFigura;
  final bool exibeTexto;
  final bool tamanhoTexto;
  final double tamanhoFiguraValor;
  final double tamanhoTextoValor;
  final int bordasArredondadasValor;
  final double tipoBordaValor;
  final Color fundoColoridoValor;

  const Tela2({
    super.key,
    required this.exibiImagem,
    required this.bordasArredondadas,
    required this.fundoColorido,
    required this.tipoBorda,
    required this.tamanhoFigura,
    required this.exibeTexto,
    required this.tamanhoTexto,
    required this.tamanhoFiguraValor,
    required this.tamanhoTextoValor,
    required this.bordasArredondadasValor,
    required this.tipoBordaValor,
    required this.fundoColoridoValor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Imagem')),
      body: Center(
        child: exibiImagem
            ? Container(
                width: tamanhoFiguraValor,
                height: tamanhoFiguraValor,
                decoration: BoxDecoration(
                  color: fundoColoridoValor,
                  border: Border.all(
                    color: Colors.black,
                    width: tipoBordaValor,
                  ),
                  borderRadius:
                      BorderRadius.circular(bordasArredondadasValor.toDouble()),
                ),
                child: Center(
                  child: exibeTexto
                      ? Text(
                          'Texto',
                          style: TextStyle(
                            fontSize: tamanhoTextoValor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : null,
                ),
              )
            : const Text('Imagem Ocultada'),
      ),
    );
  }
}
