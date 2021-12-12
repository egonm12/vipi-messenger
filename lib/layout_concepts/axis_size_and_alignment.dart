import 'package:flutter/material.dart';
import 'package:sandbox/widgets/bluebox.dart';

class AxisSizeAndAlignment extends StatelessWidget {
  const AxisSizeAndAlignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}
