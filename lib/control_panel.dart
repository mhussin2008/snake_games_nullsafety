import 'package:flutter/material.dart';

import 'control_button.dart';
import 'direction.dart';

class ControlPanel extends StatelessWidget {
  final void Function(Direction direction)? onTapped;

  const ControlPanel({Key? key, this.onTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                ControlButton(
                  icon: const Icon(Icons.arrow_left),
                  onPressed: () {
                    print('left tapped');
                    onTapped!(Direction.left);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ControlButton(
                  icon: const Icon(Icons.arrow_drop_up_sharp),
                  onPressed: () {
                    onTapped!(Direction.up);
                  },
                ),
                const SizedBox(
                  height: 75.0,
                ),
                ControlButton(
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  onPressed: () {
                    onTapped!(Direction.down);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ControlButton(
                  icon: const Icon(Icons.arrow_right),
                  onPressed: () {
                    onTapped!(Direction.right);
                  },
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
