import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:game_app/data/model/models.dart';

/// Encargado de acceder a la colección y devolvernos todos los documentos de la misma.

class FirestoreService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<List<Game>> getGamesByCollection(String collectionName) async {
    final games = <Game>[];

    await db.collection(collectionName).get().then(
          (querySnapshot) => querySnapshot.docs.forEach((element) {
            games.add(
              Game.fromMap(element.data()),
            );
          }),
        );
    return games;
  }
}
