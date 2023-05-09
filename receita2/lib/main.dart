import 'mywidget.dart';
import 'package:flutter/material.dart';
import 'listas.dart';

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

  void carregarCervejas() {
    tableStateNotifier.value = cerva;
  }

  void carregarCafe() {
    tableStateNotifier.value = cafe;
  }

  void carregarPaises() {
    tableStateNotifier.value = paises;
  }
}

final tela = Telas();

void main() {
  runApp(app);
}

// minhas funções

MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: Scaffold(
        appBar: Menubar(),
        body: ValueListenableBuilder(
            valueListenable: tela.tableStateNotifier,
            builder: (_, value, __) {
              return MostrarDados(objetos: value);
            }),
        bottomNavigationBar:
            Nav(objects: iconico, itemSelectedCallback: tela.carregar)));

class Menubar extends AppBar {
  Menubar()
      : super(
          leading: Align(
            alignment: Alignment.centerLeft,
            child: PopupMenuButton(
                icon: Icon(Icons.menu),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Text("Azul"),
                    ),
                    PopupMenuItem<int>(
                      value: 1,
                      child: Text("Amarelo"),
                    ),
                    PopupMenuItem<int>(
                      value: 2,
                      child: Text("Preto"),
                    ),
                  ];
                },
                onSelected: (value) {
                  if (value == 0) {
                    print("Agora é azul");
                  } else if (value == 1) {
                    print("Agora é Amarelo");
                  } else if (value == 2) {
                    print("Agora é preto");
                  }
                }),
          ),
          title: Text("DevBar"),
        );
}
