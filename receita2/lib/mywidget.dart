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
