import 'package:game_app/data/model/models.dart';
import 'package:game_app/data/repository/repository.dart';

class GetGameUC {
  final GamesRepository _gameRepository;

  GetGameUC(this._gameRepository) : assert(_gameRepository != null);

  Future<List<Game>> call(String collectionName) async {
    final games = await _gameRepository.getGamesCollection(collectionName);
    return games;
  }
}
