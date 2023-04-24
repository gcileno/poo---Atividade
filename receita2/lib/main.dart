import 'mywidget.dart';
import 'package:flutter/material.dart';
import 'listas.dart';

void main() {
  runApp(app);
}

// minhas funções

MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: Scaffold(
        appBar: Menubar(),
        body: Myform(),
        bottomNavigationBar: Barranav(objects: iconico)));

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

//navBar
class Barranav extends StatelessWidget {
  List<Icon> objects;

  Barranav({this.objects = const []});

  void botaoFoiTocado(int index) {
    print("Tocaram no botão $index");
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: botaoFoiTocado,
        items: objects
            .map(
              (obj) => BottomNavigationBarItem(label: "", icon: obj),
            )
            .toList());
  }
}
