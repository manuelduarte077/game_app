import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:game_app/presentation/providers/providers.dart';
import 'package:game_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final games = context.watch<GameProvider>();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: 250,
                child: ListGameWidget(
                    games.gameListPS5 ?? [], 'Juegos Playstation 5')),
          ],
        ),
      ),
    );
  }
}
