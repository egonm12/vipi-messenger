import 'package:flutter/material.dart';
import 'package:sandbox/widgets/bluebox.dart';

/// Use [Flexible] to resize widgets in a [Row] or [Column].
/// That way, you can adjust a child widget’s spacing while keeping
/// its size in relation to its parent widget. [Expanded] changes
/// the constraints of a child widget, so it fills any empty space.
class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        BlueBox(),
        Flexible(
          child: BlueBox(),
          fit: FlexFit.tight,
        ),
        Flexible(
          child: BlueBox(),
          fit: FlexFit.tight,
        ),
      ],
    );
  }
}
