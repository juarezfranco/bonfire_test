import 'package:bonfire/bonfire.dart';

const _sprite = "vendor/CuteFantasyFree/Player/Player.png";

// idle down, idle right, idle up, run down, run right, run up

class FarmerPlayer extends SimplePlayer with BlockMovementCollision {
  FarmerPlayer(
    Vector2 position, {
    super.speed = 75,
    super.life = 100,
  }) : super(
          position: position,
          size: Vector2.all(32),
          initDirection: Direction.down,
          animation: SimpleDirectionAnimation(
            idleDown: SpriteAnimation.load(
              _sprite,
              SpriteAnimationData.sequenced(
                amount: 6,
                stepTime: 0.1,
                texturePosition: Vector2(0, 0),
                textureSize: Vector2.all(32),
              ),
            ),
            idleRight: SpriteAnimation.load(
              _sprite,
              SpriteAnimationData.sequenced(
                amount: 6,
                stepTime: 0.1,
                texturePosition: Vector2(0, 32),
                textureSize: Vector2.all(32),
              ),
            ),
            idleUp: SpriteAnimation.load(
              _sprite,
              SpriteAnimationData.sequenced(
                amount: 6,
                stepTime: 0.1,
                texturePosition: Vector2(0, 64),
                textureSize: Vector2.all(32),
              ),
            ),
            runDown: SpriteAnimation.load(
              _sprite,
              SpriteAnimationData.sequenced(
                amount: 6,
                stepTime: 0.1,
                texturePosition: Vector2(0, 96),
                textureSize: Vector2.all(32),
              ),
            ),
            runRight: SpriteAnimation.load(
              _sprite,
              SpriteAnimationData.sequenced(
                amount: 6,
                stepTime: 0.1,
                texturePosition: Vector2(0, 128),
                textureSize: Vector2.all(32),
              ),
            ),
            runUp: SpriteAnimation.load(
              _sprite,
              SpriteAnimationData.sequenced(
                amount: 6,
                stepTime: 0.1,
                texturePosition: Vector2(0, 160),
                textureSize: Vector2.all(32),
              ),
            ),
          ),
        );

  @override
  Future<void> onLoad() {
    add(CircleHitbox(radius: size.x / 2));
    add(RectangleHitbox(size: size));

    // with solid
    add(CircleHitbox(radius: size.x / 2, isSolid: true));
    add(RectangleHitbox(size: size, isSolid: true));
    return super.onLoad();
  }

  @override
  void onCollision(Set<Vector2> points, PositionComponent other) {
    super.onCollision(points, other);
    print('colisao');
  }
}
