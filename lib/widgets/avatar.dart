import 'package:fifthlesson_simplecode/constants/app_assets.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(74),
          image: DecorationImage(image: AssetImage(AppAssets.images.noAvatar))),
    );
  }
}
