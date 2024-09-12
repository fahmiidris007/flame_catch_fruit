import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_catch_fruit/common/constant.dart';
import 'package:flame_catch_fruit/components/fruit.dart';
import 'package:flame_catch_fruit/components/player.dart';

class CatchFruitPage extends FlameGame {
  final SpriteComponent _bg = SpriteComponent();
  final Player _player = Player();
  final Fruit _fruit = Fruit();

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    _bg
      ..sprite = await loadSprite(Constant.bg)
      ..size = size;
    add(_bg);
    add(_player);
    add(_fruit);
  }
}
