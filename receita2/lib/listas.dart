import 'package:flutter/material.dart';

var cerve = [
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

List<String> cerva = [
  "La Fin Du Monde - Bock - 65 ibu",
  "Sapporo Premiume - Sour Ale - 54 ibu",
  "Duvel - Pilsner - 82 ibu",
  "Rochefort 10 - Belgian Quadrupel - 30 ibu",
  "Guinness Draught - Dry Stout - 45 ibu",
  "Orval - Belgian Pale Ale - 50 ibu",
  "Chimay Blue - Belgian Dark Strong Ale - 36 ibu",
  "Schneider Aventinus - Weizenbock - 16 ibu",
  "Sierra Nevada Pale Ale - American Pale Ale - 37 ibu",
  "Weihenstephaner Hefe Weissbier - Hefeweizen - 14 ibu",
  "Westmalle Dubbel - Belgian Dubbel - 24 ibu",
  "St. Bernardus Abt 12 - Belgian Quadrupel - 22 ibu",
  "Rogue Dead Guy Ale - Maibock - 40 ibu",
  "Augustiner Bräu München Lagerbier Hell - Munich Helles Lager - 19 ibu",
  "Ayinger Celebrator Doppelbock - Doppelbock - 24 ibu",
  "Samuel Smith's Oatmeal Stout - Oatmeal Stout - 32 ibu",
  "Pauwel Kwak - Belgian Strong Ale - 16 ibu",
  "Tripel Karmeliet - Belgian Tripel - 20 ibu",
  "Gulden Draak - Belgian Dark Strong Ale - 24 ibu",
  "Ommegang Three Philosophers - Belgian Quadrupel - 21 ibu",
  "St. Bernardus Tripel - Belgian Tripel - 25 ibu",
  "Weihenstephaner Vitus - Weizenbock - 18 ibu",
  "Delirium Tremens - Belgian Strong Ale - 26 ibu",
  "Rodenbach Grand Cru - Flanders Red Ale - 15 ibu",
  "Brooklyn Black Chocolate Stout - Russian Imperial Stout - 51 ibu",
  "De Dolle Oerbier - Belgian Strong Dark Ale - 35 ibu",
  "Aecht Schlenkerla Rauchbier Märzen - Rauchbier - 30 ibu",
  "Hoegaarden - Belgian Witbier - 15 ibu",
  "Stone IPA - American IPA - 77 ibu",
  "Belhaven Scottish Ale - Scottish Ale - 21 ibu"
];

var cafe = [
  {"nome": "Ethiopian Yirgacheffe", "torra": "média"},
  {"nome": "Panama Geisha", "torra": "leve"},
  {"nome": "Jamaican Blue Mountain", "torra": "média"},
  {"nome": "Hawaiian Kona", "torra": "média"},
  {"nome": "Guatemala Antigua", "torra": "média"},
  {"nome": "Costa Rica Tarrazu", "torra": "média"},
  {"nome": "Sumatra Mandheling", "torra": "escura"},
  {"nome": "Kenya AA", "torra": "média"},
  {"nome": "Tanzania Peaberry", "torra": "média"},
  {"nome": "Brazil Santos Bourbon", "torra": "média"},
  {"nome": "Mexico Altura", "torra": "média"},
  {"nome": "Colombian Supremo", "torra": "média"},
  {"nome": "Nicaragua Matagalpa", "torra": "média"},
  {"nome": "El Salvador Pacamara", "torra": "média"},
  {"nome": "Honduras Marcala", "torra": "média"},
  {"nome": "India Monsooned Malabar", "torra": "escura"},
  {"nome": "Ethiopian Sidamo", "torra": "média"},
  {"nome": "Yemen Mocha", "torra": "média"},
  {"nome": "Puerto Rico Yauco Selecto", "torra": "média"},
  {"nome": "Jamaican High Mountain Supreme", "torra": "média"},
  {"nome": "Papua New Guinea Sigri Estate", "torra": "média"},
  {"nome": "Indonesia Sulawesi Toraja", "torra": "média"},
  {"nome": "Costa Rica Tres Rios", "torra": "média"},
  {"nome": "Mexico Pluma Altura", "torra": "média"},
  {"nome": "Dominican Republic Barahona", "torra": "média"},
  {"nome": "Guatemala Huehuetenango", "torra": "média"},
  {"nome": "Colombia Popayan Supremo", "torra": "média"},
  {"nome": "Panama Boquete", "torra": "média"},
  {"nome": "Brazil Cerrado", "torra": "média"},
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
  }
];

List<Icon> iconico = [
  Icon(Icons.coffee_maker_sharp),
  Icon(Icons.local_drink_sharp),
  Icon(Icons.flag_sharp),
];
