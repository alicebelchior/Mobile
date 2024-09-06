import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  bool checkbox1Value = false;
  bool checkbox2Value = false;
  bool checkbox3Value = false;
  bool checkbox4Value = false;
  String radio1 = 'Churrasco';
  String radio2 = 'Cinema';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Text('Nome'),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),

        const Text('Atividades:'),
        Row(children: <Widget>[
          Checkbox(
            value: checkbox1Value,
            onChanged: (bool? value) {
              setState(() {
                checkbox1Value = value!;
              });
            },
          ),
          const Text('Estudar'),
        ]),

        Row(children: <Widget>[
          Checkbox(
            value: checkbox1Value,
            onChanged: (bool? value) {
              setState(() {
                checkbox2Value = value!;
              });
            },
          ),
          const Text('Dormir'),
        ]),

        Row(children: <Widget>[
          Checkbox(
            value: checkbox1Value,
            onChanged: (bool? value) {
              setState(() {
                checkbox3Value = value!;
              });
            },
          ),
          const Text('Comer'),
        ]),

        Row(children: <Widget>[
          Checkbox(
            value: checkbox1Value,
            onChanged: (bool? value) {
              setState(() {
                checkbox4Value = value!;
              });
            },
          ),
          const Text('Trabalhar'),
        ]),
        const SizedBox(height: 20),


      const Text('Opções'),
        Row(children: <Widget>[
          Radio<String>(
            value: '',
            groupValue: radio1,
            onChanged: (String? value) {
              setState(() {
                radio1 = value!;
              });
            },
          ),
          const Text('Churrasco'),
        ]),

        Row(
          children: <Widget>[
            Radio<String>(
              value: '',
              groupValue: radio2,
              onChanged: (String? value) {
                setState(() {
                  radio2 = value!;
                });
              },
            ),
            const Text('Cinema'),
          ],
        ),
        const SizedBox(height: 20),


        ElevatedButton(
          onPressed: () {
            // Você deve indicar aqui o que fazer, link ou outra coisa.
          },
          child: const Text('Enviar'),
        ),
      ],
    );
  }
}
