import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

Game gameFromMap(String str) => Game.fromMap(json.decode(str));

String gameToMap(Game data) => json.encode(data.toMap());

class Game {
  final String? name;
  final String? price;
  final String? rate;
  final String? shortDesc;
  final String? longDesc;
  final String? gameImage;
  final String? image;

  Game({
    this.name,
    this.price,
    this.rate,
    this.shortDesc,
    this.longDesc,
    this.gameImage,
    this.image,
  });

  factory Game.fromMap(Map<String, dynamic> json) => Game(
        name: json['name'],
        price: json['price'],
        rate: json['rate'],
        shortDesc: json['short_desc'],
        longDesc: json['long_desc'],
        gameImage: json['game_image'],
        image: json['image'],
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'price': price,
        'rate': rate,
        'short_desc': shortDesc,
        'long_desc': longDesc,
        'game_image': gameImage,
        'image': image,
      };

  factory Game.fromFirestore(DocumentSnapshot documentSnapshot) {
    final game = Game.fromMap(documentSnapshot.data() as Map<String, dynamic>);
    return game;
  }
}
