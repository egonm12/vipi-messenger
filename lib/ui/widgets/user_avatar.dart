import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    required this.photoUrl,
    this.shape = const CircleBorder(),
    this.placeholderColor = Colors.grey,
    this.size = 120,
    Key? key,
  }) : super(key: key);

  final String? photoUrl;
  final ShapeBorder shape;
  final Color placeholderColor;
  final double size;

  Widget _imageFrameBuilder(
    BuildContext context,
    Widget? child,
    int? frame,
    bool? _,
  ) {
    if (frame == null) {
      return Container(color: placeholderColor);
    }

    return child!;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: ClipPath(
        clipper: ShapeBorderClipper(shape: shape),
        clipBehavior: Clip.hardEdge,
        child: photoUrl != null
            ? Image.network(
                photoUrl!,
                width: size,
                height: size,
                cacheWidth: size.toInt(),
                cacheHeight: size.toInt(),
                fit: BoxFit.cover,
                frameBuilder: _imageFrameBuilder,
              )
            : Center(
                child: Icon(
                  Icons.account_circle,
                  size: size,
                  color: placeholderColor,
                ),
              ),
      ),
    );
  }
}
