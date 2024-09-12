import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_catch_fruit/common/constant.dart';
import 'package:flame_catch_fruit/components/player.dart';

class CatchFruitPage extends FlameGame {
  final SpriteComponent _bg = SpriteComponent();
  final Player _player = Player();

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    _bg
      ..sprite = await loadSprite(Constant.bg)
      ..size = size;
    add(_bg);
    add(_player);
  }
}
