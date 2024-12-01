import 'package:flutter/material.dart';

class CardWithTitleSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color backgroundColor;
  final String? backgroundImage;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final double minHeight;
  final VoidCallback? onTap;

  const CardWithTitleSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.backgroundColor = Colors.blue,
    this.backgroundImage,
    this.titleStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    this.subtitleStyle = const TextStyle(fontSize: 16, color: Colors.white70),
    this.minHeight = 200.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(minHeight: minHeight),
        decoration: BoxDecoration(
          color: backgroundColor,
          image: backgroundImage != null
              ? DecorationImage(
                  image: AssetImage(backgroundImage!),
                  fit: BoxFit.cover,
                )
              : null,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 8.0),
            Text(
              subtitle,
              style: subtitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
