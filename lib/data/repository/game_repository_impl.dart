import 'package:game_app/data/firestore_service/firestore_services.dart';

import 'package:game_app/data/model/models.dart';
import 'package:game_app/data/repository/repository.dart';

class GameRepositoryImp extends GameRepository {
  late final FirestoreService _gameFirestoreService;

  GameRepositoryImp(this._gameFirestoreService)
      : assert(_gameFirestoreService != null);

  @override
  Future<List<Game>> getGamesCollection(String collectionName) async {
    final games =
        await _gameFirestoreService.getGamesByCollection(collectionName);
    return games;
  }
}
