import 'dart:async';
import 'dart:developer';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_catch_fruit/common/constant.dart';

class CatchFruitPage extends FlameGame {
  SpriteComponent bg = SpriteComponent();

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    bg
      ..sprite = await loadSprite(Constant.bg)
      ..size = size;
    add(bg);
  }

  @override
  void update(double dt) {
    super.update(dt);
    log('update');
  }
}
