import 'package:flutter/material.dart';

void main() {
  runApp(app);
}

MaterialApp app = MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple, fontFamily: 'Raleway'),
    home: Scaffold(
      appBar: AppBar(title: Text("Turma do Chaves")),
      body: Center(
          child: Row(children: [
        Container(
            width: 320,
            height: 400,
            child: Card(
              child: Column(children: [
                Flexible(
                  child: Image.network(
                      "https://static.wikia.nocookie.net/chespirito/images/e/ef/Chiquinha.png/revision/latest/scale-to-width-down/239?cb=20180717201504&path-prefix=pt"),
                ),
                Text("Chiquina esta dizendo 'oi'"),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_circle_outline)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.toggle_on_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined))
                  ],
                )
              ]),
            )),
        Container(
            width: 320,
            height: 400,
            child: Card(
              child: Column(children: [
                Flexible(
                  child: Image.network(
                      "https://img.r7.com/images/kiko-chaves-11012021170753854?dimensions=301x301&&amp;resize=301x301&amp;crop=431x431+48+0&amp;resize=301x301&amp;crop=431x431+48+0"),
                ),
                Text(
                    "Kiko esta dizendo que 'não vai te dar o sanduiche de mortadela"),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_circle_outline)),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.toggle_on_outlined)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.thumb_up_alt_outlined))
                  ],
                )
              ]),
            )),
        Container(
          width: 320,
          height: 400,
          child: Card(
            child: Column(children: [
              Flexible(
                  child: Image.network(
                      "https://ogimg.infoglobo.com.br/in/23704851-41b-893/FT1086A/60559840.jpg")),
              Text("Seu Madruga diz: 'Não diz a seu barriga que estou aqui'"),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.check_circle_outline)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.toggle_on_outlined)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.thumb_up_alt_outlined))
                ],
              )
            ]),
          ),
        ),
      ])),
      //aqui termina linha de cards
      bottomNavigationBar: BarraNav(),
    ));

class BarraNav extends StatelessWidget {
  BarraNav();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        label: "Pagina inicial",
        icon: Icon(Icons.home_max_outlined),
      ),
      BottomNavigationBarItem(
          label: "Vila", icon: Icon(Icons.corporate_fare_outlined)),
      BottomNavigationBarItem(
          label: "Sair", icon: Icon(Icons.close_fullscreen_outlined))
    ]);
  }
}
