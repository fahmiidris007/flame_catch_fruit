import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame_catch_fruit/common/constant.dart';
import 'package:flame_catch_fruit/pages/catch_fruit_page.dart';

class Fruit extends SpriteComponent with HasGameRef<CatchFruitPage> {
  final double _speed = 100;
  final Random _random = Random();

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    Sprite apple = await gameRef.loadSprite(Constant.apple);
    Sprite cherry = await gameRef.loadSprite(Constant.cherry);
    Sprite pear = await gameRef.loadSprite(Constant.pear);
    List<Sprite> fruits = [apple, cherry, pear];
    sprite = fruits[_random.nextInt(fruits.length)];
    width = 35;
    height = 35;
    position.x = _random.nextInt((gameRef.size.x).toInt()).toDouble();
    position.y = 100;
    anchor = Anchor.center;
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.y += _speed * dt;

    if (position.y > gameRef.size.y) {
      removeFromParent();
      gameRef.add(Fruit());
    }
  }
}
