import 'package:flame/game.dart';
import 'package:flame_catch_fruit/pages/catch_fruit_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: CatchFruitPage(),
    );
  }
}
