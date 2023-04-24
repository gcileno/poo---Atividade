import 'package:flutter/material.dart';

class MostrarDados extends StatelessWidget {
  List<Map<String, dynamic>> objetos;
  MostrarDados({this.objetos = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: objetos.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          // exibe o título com as chaves
          return ListTile(
            title: Row(
              children: objetos[index]
                  .keys
                  .map((key) => Expanded(
                          child: Text(
                        key.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )))
                  .toList(),
            ),
          );
        } else {
          // exibe os valores dos elementos da objetos
          final item = objetos[index];
          return ListTile(
            title: Row(
              children: item.values
                  .map((value) => Expanded(child: Text(value)))
                  .toList(),
            ),
          );
        }
      },
    );
    ;
  }
}

class Myform extends StatelessWidget {
  Myform();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 16),
          Text('Escolha um valor'),
          SizedBox(height: 16),
          Slider(
            value: 0.0,
            min: 0.0,
            max: 50,
            divisions: 10,
            label: 'Valor: 0.0',
            onChanged: (double value) {},
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Digite seu nome',
            ),
          ),
          SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Digite sua senha',
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
              decoration: InputDecoration(hintText: "Escreva sua mensagem")),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Text('Dados cadastrados'),
                duration: Duration(seconds: 2),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text('Enviar'),
          ),
          Row(
            children: <Widget>[
              Switch(
                value: false,
                onChanged: (value) {},
              ),
              Switch(
                value: true,
                onChanged: (value) {},
              ),
              Switch(
                value: false,
                onChanged: (value) {},
              ),
              SizedBox(
                height: 16,
              ),
              Checkbox(value: false, onChanged: (value) => {}),
              Text('Café'),
              SizedBox(
                height: 16,
              ),
              Checkbox(value: false, onChanged: (bool) => {}),
              Text('Paises'),
              SizedBox(
                height: 16,
              ),
              Checkbox(value: false, onChanged: (value) => {}),
              Text('Cervejas'),
            ],
          )
        ],
      ),
    );
  }
}

class Corpo extends StatelessWidget {
  List<Map<String, dynamic>> objetos;
  Corpo({this.objetos = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: objetos.length,
        itemBuilder: (context, index) {
          final obj = objetos.elementAt(index);
          return DataTable(
              columns: obj.keys
                  .map(
                    (e) => DataColumn(
                      label: Expanded(
                        child: Text(
                            e.toString().toUpperCase().replaceAll("_", " "),
                            style: TextStyle(fontStyle: FontStyle.italic)),
                      ),
                    ),
                  )
                  .toList(),
              rows: [
                DataRow(
                    cells: obj.values
                        .map((e) => DataCell(Text(e.toString())))
                        .toList())
              ]);
        });
  }
}
