import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class LogoTile extends StatelessWidget {
  final String imagePath;
  final Function()? onTap;
  const LogoTile({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlassContainer.frostedGlass(
        height: 70,
        width: 70,
        padding: EdgeInsets.all(20),
        borderColor: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // color: Colors.grey[200],
        child: Image.asset(
          imagePath,
          height: 20,
        ),
      ),
    );
  }
}
