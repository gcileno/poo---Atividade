import 'package:flutter/material.dart';

void main() {
  runApp(app);
}

MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    home: Scaffold(
      appBar: AppBar(title: Text("DevBAR")),
      body: Corpo(),
      bottomNavigationBar: Barranav(objects: [
        Icon(Icons.coffee_maker_sharp),
        Icon(Icons.local_drink_sharp),
        Icon(Icons.flag_sharp),
        Icon(Icons.close_fullscreen_sharp),
        Icon(Icons.devices_sharp)
      ]),
    ));

class Corpo extends StatelessWidget {
  Corpo();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Text("La Fin Du Monde - Bock - 65 ibu"),
      ),
      Expanded(
        child: Text("Sapporo Premiume - Sour Ale - 54 ibu"),
      ),
      Expanded(
        child: Text("Duvel - Pilsner - 82 ibu"),
      )
    ]);
  }
}

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

//Icons.coffee_outlined, Icons.local_drink_outlined, Icons.flag_outlined