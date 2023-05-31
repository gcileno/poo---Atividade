import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'listas.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Telas {
  final ValueNotifier<List> tableStateNotifier = new ValueNotifier([]);

  void carregar(index) {
    final carregadores = [
      () => carregarCafe(),
      () => carregarCervejas(),
      () => carregarPaises(),
    ];
    carregadores[index]();
  }

  Future<void> carregarCervejas() async {
    var beersUri = Uri(
        scheme: 'https',
        host: 'random-data-api.com',
        path: 'api/beer/random_beer',
        queryParameters: {'size': '80'});

    var jsonString = await http.read(beersUri);
    List beersJson = jsonDecode(jsonString);

    for (var cerveja in beersJson) {
      cerveja['id'] = cerveja['id'].toString();
    }
    tableStateNotifier.value = beersJson;
  }

  Future<void> carregarCafe() async {
    var cofee = Uri(
        scheme: 'https',
        host: 'random-data-api.com',
        path: 'api/coffee/random_coffee',
        queryParameters: {'size': '10'});

    var dados = await http.read(cofee);

    var dadoscofee = jsonDecode(dados) as List<dynamic>;
    for (var a in dadoscofee) {
      a['id'] = a['id'].toString();
    }

    tableStateNotifier.value = dadoscofee;
  }

  void carregarPaises() {
    tableStateNotifier.value = paises;
  }
}

//mostrar tabelas
class MostrarDados extends StatelessWidget {
  //final List objetos;
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

//barra inferior
class Nav extends HookWidget {
  List<Icon> meuincone;

  var itemSelectedCallback;
  Nav({this.meuincone = const [], this.itemSelectedCallback}) {
    itemSelectedCallback ??= (_) {};
  }

  @override
  Widget build(BuildContext context) {
    var state = useState(1);

    return BottomNavigationBar(
        onTap: (index) {
          state.value = index;
          itemSelectedCallback(index);
        },
        currentIndex: state.value,
        items: meuincone
            .map(
              (obj) => BottomNavigationBarItem(label: "", icon: obj),
            )
            .toList());
  }
}

class MostrarJson extends StatelessWidget {
  List<Map<String, dynamic>> objetos;
  MostrarJson({this.objetos = const []});

  @override
  Widget build(BuildContext context) {
    return objetos.isNotEmpty
        ? DataTable(
            columns: objetos.first.keys.map((key) {
              return DataColumn(
                  label: Text(key.toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold)));
            }).toList(),
            rows: objetos.map((item) {
              return DataRow(
                  cells: item.values.map((value) {
                return DataCell(ListTile(title: Text(value)));
              }).toList());
            }).toList(),
          )
        : Center(child: Text('Nenhum dado para mostrar'));
  }
}

class DataTableWidget extends StatelessWidget {
  List<Map<String, dynamic>> objetos;
  DataTableWidget({this.objetos = const []});

  @override
  Widget build(BuildContext context) {
    return objetos.isNotEmpty
        ? SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              columns: objetos.first.keys.map((key) {
                return DataColumn(
                    label: Text(key.toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.bold)));
              }).toList(),
              rows: objetos.map((item) {
                return DataRow(
                    cells: item.values.map((value) {
                  return DataCell(ListTile(title: Text(value)));
                }).toList());
              }).toList(),
            ),
          )
        : Center(child: Text('Nenhum dado para mostrar'));
  }
}
