import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário de Exemplo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário de Exemplo'),
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
  String dropdownValue = 'Opção 1';
  bool checkbox1Value = false;
  bool checkbox2Value = false;
  String radioValue = 'Opção 1';
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Text('Um campo para entrada de texto simples'),
        TextFormField(


          decoration: const InputDecoration(
            labelText: 'Digite algo',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),



        const Text('Campo de Seleção (Dropbox)'),
        DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['Opção 1', 'Opção 2', 'Opção 3', 'Opção 4']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),



        const Text('Botão de Rádio, marcar a opção'),
        Row(
          children: <Widget>[

            Radio<String>(
              value: 'Opção 1',
              groupValue: radioValue,
              onChanged: (String? value) {
                setState(() {
                  radioValue = value!;
                });
              },
            ),
            const Text('Opção 1 - Vivo'),


            Radio<String>(
              value: 'Opção 2',
              groupValue: radioValue,
              onChanged: (String? value) {
                setState(() {
                  radioValue = value!;
                });
              },
            ),
            const Text('Opção 2 - Morto'),

          ],          
        ),
        const SizedBox(height: 20),



        const Text('Campo de Checkbox - Gosto de aula'),
        Checkbox(
          value: checkbox1Value,
          onChanged: (bool? value) {
            setState(() {
              checkbox1Value = value!;
            });
          },
        ),
        const SizedBox(height: 20),



        const Text('Campo de Switch - Indicar um estado'),
        Switch(
          value: switchValue,
          onChanged: checkbox1Value
              ? (bool value) {
                  setState(() {
                    switchValue = value;
                  });
                }
              : null,
        ),
        const SizedBox(height: 20),

        const Text('Campo de Slider - Controlado pelo Switch'),
        Slider(
          value: switchValue ? 1.0 : 0.0,
          onChanged: (double value) {
            if (checkbox1Value) {
              setState(() {
                switchValue = value > 0.5;
              });
            }
          },
          min: 0,
          max: 20,
        ),
        const SizedBox(height: 20),





        const Text('Campo de Checkbox - Libera o uso do segundo Slider'),
        Checkbox(
          value: checkbox2Value,
          onChanged: (bool? value) {
            setState(() {
              checkbox2Value = value!;
            });
          },
        ),
        const SizedBox(height: 20),

        const Text('Campo de Slider 2 - Liberado pelo segundo Checkbox'),
        Slider(
          value: checkbox2Value ? 0.0 : 10.0,
          onChanged: checkbox2Value
              ? (double value) {
                  setState(() {
                    // Qualquer operação pode ser feita aqui ao ajustar o slider
                  });
                }
              : null, // Desabilita o slider se o checkbox não estiver marcado
          min: 0,
          max: 20,
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