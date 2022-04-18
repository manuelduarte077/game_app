import 'package:game_app/data/model/models.dart';

abstract class GameRepository {
  Future<List<Game>> getGamesCollection(String collectionName);
}
