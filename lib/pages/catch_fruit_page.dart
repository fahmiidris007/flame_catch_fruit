import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame_catch_fruit/common/constant.dart';
import 'package:flame_catch_fruit/components/fruit.dart';
import 'package:flame_catch_fruit/components/player.dart';
import 'package:flutter/painting.dart';

class CatchFruitPage extends FlameGame with HasCollisionDetection {
  final SpriteComponent _bg = SpriteComponent();
  final Player _player = Player();
  final Fruit _fruit = Fruit();
  late TextComponent scoreText;
  int score = 0;

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    _bg
      ..sprite = await loadSprite(Constant.bg)
      ..size = size;
    add(_bg);
    add(_player);
    add(_fruit);
    scoreText = TextComponent()
      ..anchor = Anchor.topLeft
      ..x = 10
      ..y = 30
      ..textRenderer = TextPaint(
          style: TextStyle(color: BasicPalette.red.color, fontSize: 30));
    add(scoreText);
  }

  @override
  bool get debugMode => true;

  @override
  void update(double dt) {
    super.update(dt);
    scoreText.text = 'Score: $score';
  }
}
