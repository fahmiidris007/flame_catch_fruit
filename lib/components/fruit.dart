import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_catch_fruit/common/constant.dart';
import 'package:flame_catch_fruit/pages/catch_fruit_page.dart';

class Fruit extends SpriteComponent with HasGameRef<CatchFruitPage> {
  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite(Constant.apple);
    width = 35;
    height = 35;
    position.x = 100;
    position.y = 100;
    anchor = Anchor.center;
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.y += 100 * dt;
  }
}
