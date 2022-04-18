import 'package:flutter/material.dart';
import 'package:game_app/data/model/models.dart';
import 'package:game_app/domain/get_games_uc.dart';

class GameProvider with ChangeNotifier {
  final GetGameUC _getGameUC;

  GameProvider(this._getGameUC) : assert(_getGameUC != null);

// fields
  List<Game>? _gameListPS5;

  String? _errorMessage;

// getters
  List<Game>? get gameListPS5 => _gameListPS5;
  String? get errorMessage => _errorMessage;

  void getGames(String collectionName) async {
    try {
      switch (collectionName) {
        case 'playstation5':
          _gameListPS5 = await _getGameUC(collectionName);
      }
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      notifyListeners();
    }
  }
}
