import 'package:bonfire/bonfire.dart';
import 'package:bonfire_test/farmer_player.dart';
import 'package:flutter/material.dart';

class ExampleMap extends StatelessWidget {
  const ExampleMap({super.key});

  final String asset = 'tiled/map.json';
  Vector2 get startPosition => Vector2(16 * 4, 16 * 5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BonfireWidget(
        cameraConfig: CameraConfig(
          zoom: 1,
        ),
        playerControllers: [
          Joystick(
            directional: JoystickDirectional(
              color: Colors.red,
            ),
          )
        ],
        collisionAreaColor: Colors.green,
        showCollisionArea: true,
        player: FarmerPlayer(startPosition),
        map: WorldMapByTiled(
          WorldMapReader.fromAsset(asset),
        ),
      ),
    );
  }
}
