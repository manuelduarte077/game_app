import 'package:game_app/data/model/models.dart';

abstract class GamesRepository {
  Future<List<Game>> getGamesCollection(String collectionName);
}
