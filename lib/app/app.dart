import 'package:flutter/material.dart';
import 'package:game_app/presentation/providers/providers.dart';
import 'package:game_app/presentation/screens/screens.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GameProvider>(
          create: (_) => GetIt.I<GameProvider>()..getGames('playstation5'),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
