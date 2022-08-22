import 'package:flutter/cupertino.dart';

class Food {
  final String img;

  Food({required this.img});
}

class Fooddata {
  static final foodimg = [
    Food(img: 'assets/img/burger.jpg'),
    Food(img: 'assets/img/chowmin.jpg'),
    Food(img: 'assets/img/friedrice.jpg'),
    Food(img: 'assets/img/momo.jpg'),
    Food(img: 'assets/img/pizza.jpg'),
  ];
}
