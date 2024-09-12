import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flame_catch_fruit/common/constant.dart';
import 'package:flame_catch_fruit/pages/catch_fruit_page.dart';
import 'package:flutter/painting.dart';

class Player extends SpriteComponent with HasGameRef<CatchFruitPage> {
  final JoystickComponent _joystick = JoystickComponent(
    knob: CircleComponent(
      radius: 15,
      paint: BasicPalette.white.withAlpha(200).paint(),
    ),
    background: CircleComponent(
      radius: 40,
      paint: BasicPalette.white.withAlpha(100).paint(),
    ),
    margin: const EdgeInsets.only(left: 32, bottom: 32),
  );

  final double _speed = 200;

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();
    sprite = await gameRef.loadSprite(Constant.box);
    height = 50;
    width = 75;
    position.x = gameRef.size.x / 2;
    position.y = gameRef.size.y - 150;
    anchor = Anchor.center;
    gameRef.add(_joystick);
  }

  @override
  void update(double dt) {
    super.update(dt);

    position += _joystick.relativeDelta * _speed * dt;
  }
}
