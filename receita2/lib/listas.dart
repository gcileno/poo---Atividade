import 'package:flutter/material.dart';

final cerva = [
  {"name": "La Fin Du Monde", "style": "Bock", "ibu": "65"},
  {"name": "Sapporo Premiume", "style": "Sour Ale", "ibu": "54"},
  {"name": "Duvel", "style": "Pilsner", "ibu": "82"},
  {"name": "Westvleteren 12", "style": "Belgian Quadrupel", "ibu": "42"},
  {"name": "Weihenstephaner Hefeweissbier", "style": "Hefeweizen", "ibu": "14"},
  {"name": "Guinness Draught", "style": "Irish Dry Stout", "ibu": "45"},
  {"name": "Chimay Blue", "style": "Belgian Strong Dark Ale", "ibu": "30"},
  {"name": "Tripel Karmeliet", "style": "Belgian Tripel", "ibu": "28"},
  {"name": "St. Bernardus Abt 12", "style": "Belgian Quadrupel", "ibu": "22"},
  {"name": "Weihenstephaner Vitus", "style": "Weizenbock", "ibu": "17"},
  {"name": "Rochefort 10", "style": "Belgian Quadrupel", "ibu": "27"},
  {"name": "Augustiner Helles", "style": "Munich Helles", "ibu": "20"},
  {"name": "Paulaner Hefe-Weissbier", "style": "Hefeweizen", "ibu": "12"},
  {"name": "Pilsner Urquell", "style": "Czech Pilsner", "ibu": "40"},
  {"name": "Orval", "style": "Belgian Pale Ale", "ibu": "36"},
  {"name": "Rauchbier Märzen", "style": "Rauchbier", "ibu": "30"},
  {"name": "Weihenstephaner Original", "style": "Munich Helles", "ibu": "21"},
  {"name": "Anchor Steam Beer", "style": "California Common", "ibu": "33"},
  {"name": "Hoegaarden Witbier", "style": "Witbier", "ibu": "15"},
  {"name": "Schneider Weisse Aventinus", "style": "Weizenbock", "ibu": "16"},
  {"name": "Hop Rod Rye", "style": "American IPA", "ibu": "80"},
  {"name": "Brooklyn Lager", "style": "American Amber Lager", "ibu": "33"},
  {
    "name": "Arrogant Bastard Ale",
    "style": "American Strong Ale",
    "ibu": "100+"
  }
];

var cafe = [
  {"nome": "Café do Brasil", "torragem": "Média", "acidez": "1.5%"},
  {"nome": "Café Colombiano", "torragem": "Escura", "acidez": "0.8%"},
  {"nome": "Café da Etiópia", "torragem": "Clara", "acidez": "2.0%"},
  {"nome": "Café do Panamá", "torragem": "Média", "acidez": "1.8%"},
  {"nome": "Café Guatemalteco", "torragem": "Escura", "acidez": "1.2%"},
  {"nome": "Café do Quênia", "torragem": "Clara", "acidez": "2.5%"},
  {"nome": "Café do México", "torragem": "Média", "acidez": "1.6%"},
  {"nome": "Café Nicaraguense", "torragem": "Escura", "acidez": "1.4%"},
  {"nome": "Café Peruano", "torragem": "Clara", "acidez": "2.2%"},
  {"nome": "Café de Ruanda", "torragem": "Média", "acidez": "1.9%"},
  {"nome": "Café do Sul da Índia", "torragem": "Escura", "acidez": "1.1%"},
  {"nome": "Café do Vietnã", "torragem": "Clara", "acidez": "2.3%"},
  {"nome": "Café da Indonésia", "torragem": "Média", "acidez": "1.7%"},
  {"nome": "Café da Jamaica", "torragem": "Escura", "acidez": "1.0%"},
  {"nome": "Café de Papua Nova Guiné", "torragem": "Clara", "acidez": "2.1%"}
];

var paises = [
  {
    "pais": "Estados Unidos",
    "pib": "\$22,675 trilhões",
    "salario_medio": "\$68.703",
    "populacao": "331.449.281",
    "presidente": "Joe Biden"
  },
  {
    "pais": "China",
    "pib": "\$16,159 trilhões",
    "salario_medio": "\$12.190",
    "populacao": "1.397.897.720",
    "presidente": "Xi Jinping"
  },
  {
    "pais": "Japão",
    "pib": "\$5,154 trilhões",
    "salario_medio": "\$32.105",
    "populacao": "125.960.000",
    "presidente": "Naruhito"
  },
  {
    "pais": "Alemanha",
    "pib": "\$4,238 trilhões",
    "salario_medio": "\$44.719",
    "populacao": "83.149.300",
    "presidente": "Frank-Walter Steinmeier"
  },
  {
    "pais": "Reino Unido",
    "pib": "\$2,622 trilhões",
    "salario_medio": "\$43.709",
    "populacao": "68.207.116",
    "presidente": "Charles, Príncipe de Gales"
  },
  {
    "pais": "França",
    "pib": "\$2,582 trilhões",
    "salario_medio": "\$42.875",
    "populacao": "67.408.000",
    "presidente": "Emmanuel Macron"
  },
  {
    "pais": "Índia",
    "pib": "\$2,611 trilhões",
    "salario_medio": "\$2.041",
    "populacao": "1.380.004.385",
    "presidente": "Ram Nath Kovind"
  },
  {
    "pais": "Itália",
    "pib": "\$2,087 trilhões",
    "salario_medio": "\$31.262",
    "populacao": "60.246.951",
    "presidente": "Sergio Mattarella"
  },
  {
    "pais": "Brasil",
    "pib": "\$1,449 trilhões",
    "salario_medio": "\$5.109",
    "populacao": "213.993.437",
    "presidente": "Jair Bolsonaro"
  },
  {
    "pais": "Canadá",
    "pib": "\$1,655 trilhões",
    "salario_medio": "\$55.035",
    "populacao": "38.048.738",
    "presidente": "Julie Payette"
  },
  {
    "pais": "Coreia do Sul",
    "pib": "\$1,630 trilhões",
    "salario_medio": "\$28.159",
    "populacao": "51.780.579",
    "presidente": "Moon Jae-in"
  },
  {
    "pais": "Rússia",
    "pib": "\$1,707 trilhões",
    "salario_medio": "\$7.693",
    "populacao": "55.580.579",
    "presidente": "Putin",
  },
  {
    "pais": "Burundi",
    "pib": "\$4,484 bilhões",
    "salario_medio": "\$234",
    "populacao": "12.155.578",
    "presidente": "Évariste Ndayishimiye"
  },
  {
    "pais": "República Centro-Africana",
    "pib": "\$2,488 bilhões",
    "salario_medio": "\$91",
    "populacao": "4.900.000",
    "presidente": "Faustin-Archange Touadéra"
  },
  {
    "pais": "São Tomé e Príncipe",
    "pib": "\$408 milhões",
    "salario_medio": "\$208",
    "populacao": "211.028",
    "presidente": "Carlos Vila Nova"
  },
  {
    "pais": "Eritreia",
    "pib": "\$2,2 bilhões",
    "salario_medio": "\$123",
    "populacao": "3.546.421",
    "presidente": "Isaias Afwerki"
  },
  {
    "pais": "Madagascar",
    "pib": "\$15,3 bilhões",
    "salario_medio": "\$41",
    "populacao": "28.423.681",
    "presidente": "Andry Rajoelina"
  },
  {
    "pais": "Gâmbia",
    "pib": "\$1,722 bilhões",
    "salario_medio": "\$170",
    "populacao": "2.416.668",
    "presidente": "Adama Barrow"
  },
  {
    "pais": "Libéria",
    "pib": "\$3,175 bilhões",
    "salario_medio": "\$138",
    "populacao": "5.073.296",
    "presidente": "George Weah"
  },
  {
    "pais": "Níger",
    "pib": "\$12,4 bilhões",
    "salario_medio": "\$60",
    "populacao": "24.206.644",
    "presidente": "Mohamed Bazoum"
  },
  {
    "pais": "Malawi",
    "pib": "\$7,74 bilhões",
    "salario_medio": "\$39",
    "populacao": "19.129.952",
    "presidente": "Lazarus Chakwera"
  },
  {
    "pais": "Moçambique",
    "pib": "\$14,47 bilhões",
    "salario_medio": "\$305",
    "populacao": "30.530.911",
    "presidente": "Filipe Nyusi"
  },
  {
    "pais": "Afeganistão",
    "pib": "\$19,29 bilhões",
    "salario_medio": "\$65",
    "populacao": "38.928.346",
    "presidente": "Ashraf Ghani"
  }
];

List<Icon> iconico = [
  Icon(Icons.coffee_maker_sharp),
  Icon(Icons.local_drink_sharp),
  Icon(Icons.flag_sharp),
];

var telas = [cafe, cerva, paises];
