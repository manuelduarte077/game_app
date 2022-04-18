import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:game_app/presentation/providers/providers.dart';
import 'package:game_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var games = context.watch<GameProvider>();
    final games = context.watch<GameProvider>();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: ListGameWidget(
                    games.gameListSwitch, 'Juegos Nintendo Switch')),
            Expanded(
                child:
                    ListGameWidget(games.gameListPS5, 'Juegos Playstation 5')),
            Expanded(
                child: ListGameWidget(
                    games.gameListXboxSeriesX, 'Juegos Xbox Series X')),
            Expanded(
                child:
                    ListGameWidget(games.gameListTopSalesPC, 'Top Sales PC')),
          ],
        ),
      ),
    );
  }
}
