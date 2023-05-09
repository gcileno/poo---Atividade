import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'listas.dart';

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
